import 'package:amardesigner/Data/ProfessionalsData.dart';
import 'package:amardesigner/Data/sampleHome.dart';
import 'package:amardesigner/Middleware/route.dart';
import 'package:amardesigner/widgets/onHowerButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:amardesigner/widgets/header_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _username = '';

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    setState(() => isLoading = true);
    try {
      _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .get()
          .then((value) {
        setState(() {
          _username = value['username'];
          isLoading = false;
        });
      });
    } catch (e) {
      setState(() => isLoading = false);
      _username = '';
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    const ProfessionalsDataIcon = <IconData>[
      Icons.cake,
      Icons.add_location_sharp,
      Icons.zoom_in_outlined,
      Icons.auto_awesome_motion,
      Icons.call_end_sharp,
      Icons.equalizer_rounded,
      Icons.wifi_lock,
      Icons.mail,
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(children: [
       

        Column(children: [
          SizedBox(
          height: height*0.2,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 50, top: 8),
              child: Text(
                "Professionals Near You",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          height: height*0.2,
          child: ListView.builder(
              shrinkWrap: true,

              scrollDirection: Axis.horizontal,
              itemCount: ProfessionalsDataIcon.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return OnHowerButton(
                  builder: (isHovered) {

                    final color = isHovered ? Colors.grey[400] : Colors.white;
                    return Container(
                      width: width*0.11,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: color,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 2,
                                  offset: Offset(
                                    2,
                                    2,
                                  )),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                              child: Icon(ProfessionalsDataIcon[index],
                              color: const Color.fromARGB(255, 246, 6, 86),
                                  size: 50,
                                  weight: 40
                              )
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  ProfessionalsData[index]['title'],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 15),
                                )),
                          ],
                        )
                        );
                  },
                );
              }),
        ),
       
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: GridView.builder(
                primary: false,
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: InteriorDesigns.length,
                itemBuilder: (context, index) {
                  return OnHowerButton(builder: (isHovered) {
                    final color = isHovered ? Colors.grey[400] : Colors.white;
                    return Container(
                      margin: EdgeInsets.all(15),
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        boxShadow: const [BoxShadow( color: Colors.grey, blurRadius: 2.0, spreadRadius: 2, offset: Offset(  1, 1,  )),],
                        color: color,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              child: Image.asset(
                                  InteriorDesigns[index]['image'],
                                  width: width * 0.25,
                                  fit: BoxFit.fill),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                InteriorDesigns[index]['title'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(bottom: 5, top: 5),
                                child: Text(
                                    textAlign: TextAlign.left,
                                    "39 Saves",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Text("Save",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white))),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Text("Share",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white))),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  });
                }),
          ),
        ),
      ]),
        HeaderWidget(), ],), 
    );
  }
}
