import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:amardesigner/widgets/loading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Middleware/route.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late final bool _isGoogleUserOnly;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  final Map<String, dynamic> _userData = {};

  late String _newUsername,
      _phoneNumber,
      _companyName,
      _category,
      _currentPassword = '',
      _newPassword = '';

  final List<String> _address = List.generate(5, (index) => '');

  late bool _somethingChanged;

  @override
  void initState() {
    super.initState();
    // _somethingChanged = false;
    // _isGoogleUserOnly = _auth.currentUser!.providerData.length == 1 &&
    //     _auth.currentUser!.providerData[0].providerId == 'google.com';
    // setState(() => isLoading = false);
    // try {
    //   _firestore
    //       .collection('Professionals')
    //       .doc(_auth.currentUser!.uid)
    //       .get()
    //       .then((value) {
    //     setState(() {
    //       _userData['Company name'] = value['_companyName'];
    //       _userData['Category'] = value['_category'];
    //       _userData['address'] = value['address'];
    //       _userData['phoneNumber'] = value['phoneNumber'];
    //       isLoading = false;
    //     });
    //   });
    // } catch (e) {
    //   setState(() => isLoading = false);
    //   _userData['username'] = '(username could not be retrieved)';
    //   _userData['address'] = '(address could not be retrieved)';
    //   _userData['phoneNumber'] = '(phone number could not be retrieved)';
    //   return;
    // }
    // try {
    //   _firestore
    //       .collection('users')
    //       .doc(_auth.currentUser!.uid)
    //       .get()
    //       .then((value) {
    //     setState(() {
    //       _userData['username'] = value['username'];
    //       _userData['address'] = value['address'];
    //       _userData['phoneNumber'] = value['phoneNumber'];
    //       isLoading = false;
    //     });
    //   });
    // } catch (e) {
    //   setState(() => isLoading = false);
    //   _userData['username'] = '(username could not be retrieved)';
    //   _userData['address'] = '(address could not be retrieved)';
    //   _userData['phoneNumber'] = '(phone number could not be retrieved)';
    //   return;
    // }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          width: width,
          height: height,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.1),
                Container(
                  width: width * 0.6,
                  height: height * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Center(
                          child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text("Basic Info",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                              "Tell us a little about your business (Not a Professional)? Continue to Amar Designer.",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 10)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  const Text("Professional Company Name",
                                      style: TextStyle(fontSize: 10)),
                                  const SizedBox(height: 14),
                                  SizedBox(
                                    height: 35,
                                    child: TextFormField(
                                      onChanged: (value) =>
                                          _companyName = value,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'minimum 4 characters',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  const Text("Category",
                                      style: TextStyle(fontSize: 10)),
                                  const SizedBox(height: 14),
                                  SizedBox(
                                    height: 35,
                                    child: TextFormField(
                                      onChanged: (value) => _category = value,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Choose Category',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  const Text("Address",
                                      style: TextStyle(fontSize: 10)),
                                  const SizedBox(height: 14),
                                  SizedBox(
                                    height: 35,
                                    child: TextFormField(
                                      onChanged: (value) =>
                                          _address[0] = value.trim(),
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'address',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: width * 0.25,
                                          child: TextFormField(
                                            validator: (value) {
                                              if (value!.trim().isNotEmpty) {
                                                if (!RegExp(r"^[a-zA-Z .'-]*$")
                                                    .hasMatch(value)) {
                                                  return 'Invalid city name';
                                                }
                                              } else if (_address.any(
                                                  (element) =>
                                                      element.isNotEmpty)) {
                                                return 'City name is required';
                                              }
                                              return null;
                                            },
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'City',
                                            ),
                                            onChanged: (value) =>
                                                _address[1] = value.trim(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 35,
                                          width: width * 0.25,
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'State',
                                            ),
                                            onChanged: (value) =>
                                                _address[2] = value.trim(),
                                          ),
                                        ),
                                      ]),

                                  const SizedBox(height: 14),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: width * 0.25,
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'PIN Code',
                                            ),
                                            onChanged: (value) =>
                                                _address[3] = value.trim(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 35,
                                          width: width * 0.25,
                                          child: TextFormField(
                                            validator: (value) {
                                              if (value!.trim().isNotEmpty) {
                                                if (!RegExp(r"^[a-zA-Z\s]+$")
                                                    .hasMatch(value)) {
                                                  return 'Invalid country name';
                                                }
                                              } else if (_address.any(
                                                  (element) =>
                                                      element.isNotEmpty)) {
                                                return 'Country name is required';
                                              }
                                              return null;
                                            },
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Country',
                                            ),
                                            onChanged: (value) =>
                                                _address[4] = value.trim(),
                                          ),
                                        ),
                                      ]),
                                  const SizedBox(height: 14),
                                  const Text("Add or change your phone number",
                                      style: TextStyle(fontSize: 10)),
                                  const SizedBox(height: 14),
                                  SizedBox(
                                    height: 35,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.trim().isNotEmpty &&
                                            !RegExp(r'^\+(?:[0-9] ?){6,14}[0-9]$')
                                                .hasMatch(value)) {
                                          return 'Please enter a valid phone number (e.g. +1 123 456 7890)';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _phoneNumber = value!.trim();
                                        if (_phoneNumber.isNotEmpty) {
                                          _somethingChanged = true;
                                        }
                                      },
                                      keyboardType: TextInputType.phone,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'New phone number',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),

                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 246, 6, 86)),
                                      onPressed: () async {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          if (!_somethingChanged) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'No changes were made.'),
                                              ),
                                            );
                                            return;
                                          }
                                          setState(() => isLoading = true);
                                          try {
                                            if (_newPassword.isNotEmpty) {
                                              try {
                                                if (_isGoogleUserOnly) {
                                                  final GoogleSignInAccount?
                                                      currentGoogleUser =
                                                      await GoogleSignIn()
                                                          .signIn();
                                                  final GoogleSignInAuthentication?
                                                      googleAuth =
                                                      await currentGoogleUser
                                                          ?.authentication;
                                                  await _auth.currentUser!
                                                      .reauthenticateWithCredential(
                                                          GoogleAuthProvider
                                                              .credential(
                                                        idToken:
                                                            googleAuth?.idToken,
                                                        accessToken: googleAuth
                                                            ?.accessToken,
                                                      ))
                                                      .then((value) => _auth
                                                          .currentUser!
                                                          .linkWithCredential(
                                                              EmailAuthProvider.credential(
                                                                  email: _auth
                                                                      .currentUser!
                                                                      .email!,
                                                                  password:
                                                                      _newPassword)));
                                                } else {
                                                  await _auth.currentUser!
                                                      .reauthenticateWithCredential(
                                                          EmailAuthProvider.credential(
                                                              email: _auth
                                                                  .currentUser!
                                                                  .email!,
                                                              password:
                                                                  _currentPassword))
                                                      .then((value) async =>
                                                          await _auth
                                                              .currentUser!
                                                              .updatePassword(
                                                                  _newPassword));
                                                }
                                              } on FirebaseAuthException catch (e) {
                                                setState(
                                                    () => isLoading = false);
                                                if (e.code ==
                                                    'wrong-password') {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              'Wrong current password provided.')));
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              'Something went wrong!')));
                                                }
                                                return;
                                              } catch (e) {
                                                setState(
                                                    () => isLoading = false);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(const SnackBar(
                                                        content: Text(
                                                            'An error occurred!')));
                                                return;
                                              }
                                            }
                                            if (_newUsername.isNotEmpty &&
                                                _newUsername !=
                                                    _userData['Company name']) {
                                              await _firestore
                                                  .collection('Professionals')
                                                  .doc(_auth.currentUser!.uid)
                                                  .update({
                                                'Company name': _companyName
                                              });
                                            }
                                            if (_phoneNumber.isNotEmpty &&
                                                _phoneNumber !=
                                                    _userData['Category']) {
                                              await _firestore
                                                  .collection('Professionals')
                                                  .doc(_auth.currentUser!.uid)
                                                  .update(
                                                      {'Category': _category});
                                            }
                                            if (_phoneNumber.isNotEmpty &&
                                                _phoneNumber !=
                                                    _userData['phoneNumber']) {
                                              await _firestore
                                                  .collection('Professionals')
                                                  .doc(_auth.currentUser!.uid)
                                                  .update({
                                                'phoneNumber': _phoneNumber
                                              });
                                            }
                                            if (_address.join().isNotEmpty &&
                                                _address.join(', ') !=
                                                    _userData['address']) {
                                              await _firestore
                                                  .collection('Professionals')
                                                  .doc(_auth.currentUser!.uid)
                                                  .update({
                                                'address':
                                                    '${_address[0] != '' ? '${_address[0]}, ' : ''}${_address[1]}, ${_address[2]}, ${_address[3] != '' ? '${_address[3]}, ' : ''}${_address[4] != '' ? '${_address[4]}, ' : ''}${_address[5]}'
                                              });
                                            }
                                            setState(() => isLoading = false);
                                            Future.delayed(const Duration())
                                                .then((value) => showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return const SimpleDialog(
                                                          insetPadding:
                                                              EdgeInsets.all(
                                                                  100),
                                                          titlePadding:
                                                              EdgeInsets.all(
                                                                  20),
                                                          titleTextStyle:
                                                              TextStyle(
                                                                  fontSize: 18,
                                                                  color: Colors
                                                                      .deepPurple),
                                                          title: Text(
                                                              'Profile Updated!',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center),
                                                        );
                                                      },
                                                    ))
                                                .then((value) =>
                                                    Get.toNamed(Routes
                                                        .getHomeRoute()));
                                          } catch (e) {
                                            setState(() => isLoading = false);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        'An error occurred!')));
                                            return;
                                          }
                                        }
                                      },
                                      child: const Text("Continue",
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      )),
                      // if (isLoading) const Loading(),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.1),
              ],
            ),
          ),
        ));
  }
}
