import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BusinessDetailsPageStepTwo extends StatefulWidget {
  const BusinessDetailsPageStepTwo({Key? key}) : super(key: key);

  @override
  State<BusinessDetailsPageStepTwo> createState() => _BusinessDetailsPageStepTwoState();
}

class _BusinessDetailsPageStepTwoState extends State<BusinessDetailsPageStepTwo> {

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  late String _username, _email, _password = '';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        // main screen
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 1359,
            width: 1920,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // horizontal boxes start with space box
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // main white box
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          color: Colors.white
                      ),
                      width: 926,
                      height: 751,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height:50,
                              // width:width*0.4,
                            ),
                            const SizedBox(
                              // color: Colors.orange,
                              width: 277,
                              height: 45,
                              child: Text("Business Details",
                                textAlign: TextAlign.center,

                                style: TextStyle(
                                    fontSize: 32,
                              ),),
                            ),
                            const SizedBox(
                              height:40,
                              // width:width*0.4,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 123,
                                    child: const Text("Business Details",
                                      style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 246, 6, 86)),),
                                  ),
                                  const SizedBox(
                                    width: 319,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 120,
                                    child: const Text("Typical Job Cost",
                                      style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 246, 6, 86)),),
                                  ),
                                  
                                ],
                              ),
                            ),
                            const SizedBox(height: 11),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 17,
                                    width: 54,
                                    child: const Text("Website",
                                      style: TextStyle(
                                        fontSize: 12,
                                          color: Colors.black,
                                          // color: Color.fromARGB(255, 246, 6, 86)
                                        ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 388,
                                  ),
                                  Container(
                                    height: 34,
                                    width: 314,
                                    child: const Text("Help prospective clients understand the typical budgets that you work with.",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff848484)
                                          // color: Color.fromARGB(255, 246, 6, 86)
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Container(
                                height: 76,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 406,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "http://",
                                            hintStyle: const TextStyle(
                                              fontSize: 14,
                                            ),
                                            contentPadding:
                                            EdgeInsets.symmetric(vertical: 48, horizontal: 406),
                                            // labelText: 'Enter something',
                                            // Set border for enabled state (default)
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                              borderRadius: BorderRadius.circular(7),
                                            ),
                                            // Set border for focused state
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(width: 2, color: Colors.red),
                                              borderRadius: BorderRadius.circular(7),
                                            )),
                                      ),
                                    ),
                                    const SizedBox(width: 36,),
                                    Column(
                                      children: [
                                        const SizedBox(height: 17,),
                                        Container(
                                          height: 48,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 48,
                                                width: 134,
                                                child: TextField(
                                                  // enabled: false,

                                                  decoration: InputDecoration(
                                                      hintText: "Inc",
                                                      hintStyle: const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      contentPadding:
                                                      EdgeInsets.symmetric(vertical: 48, horizontal: 134),
                                                    // labelText: 'Enter something',
                                                    // Set border for enabled state (default)
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                        borderRadius: BorderRadius.circular(7),
                                                      ),
                                                      // Set border for focused state
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 2, color: Colors.red),
                                                        borderRadius: BorderRadius.circular(7),
                                                      )),
                                                ),
                                              ),
                                              const SizedBox(width: 12,),
                                              Container(
                                                height: 48,
                                                width: 93,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: "From",
                                                      hintStyle: const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      contentPadding:
                                                      EdgeInsets.symmetric(vertical: 48, horizontal: 93),

                                                    // labelText: 'Enter something',
                                                    // Set border for enabled state (default)
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                        borderRadius: BorderRadius.circular(7),
                                                      ),
                                                      // Set border for focused state
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 2, color: Colors.red),
                                                        borderRadius: BorderRadius.circular(7),
                                                      )),
                                                ),
                                              ),
                                              const SizedBox(width: 12,),
                                              Container(
                                                height: 48,
                                                width: 93,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: "To",
                                                      hintStyle: const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      contentPadding:
                                                      EdgeInsets.symmetric(vertical: 48, horizontal: 93),
                                                    // labelText: 'Enter something',
                                                    // Set border for enabled state (default)
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                        borderRadius: BorderRadius.circular(7),
                                                      ),
                                                      // Set border for focused state
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: const BorderSide(width: 2, color: Colors.red),
                                                        borderRadius: BorderRadius.circular(7),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4,),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Container(
                                height: 316,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 406,
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 17,
                                            width: 136,
                                            child: const Text("Business Description",style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),),
                                          ),
                                          const SizedBox(height: 14,),
                                          SizedBox(
                                            height: 127,
                                            width: 406,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Tell your customer about yourself and what makes your business unique",
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 127, horizontal: 406),
                                                  hintStyle: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  // labelText: 'Enter something',
                                                  // Set border for enabled state (default)
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                    borderRadius: BorderRadius.circular(7),
                                                  ),
                                                  // Set border for focused state
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 2, color: Colors.red),
                                                    borderRadius: BorderRadius.circular(7),
                                                  )),
                                            ),
                                          ),
                                          const SizedBox(height: 14,),
                                          Container(
                                            height: 17,
                                            width: 170,
                                            child: const Text("Certifications and Awards",style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),),
                                          ),
                                          const SizedBox(height: 14,),
                                          SizedBox(
                                            height: 113,
                                            width: 406,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  // hintText: "Tell your customer about yourself and what makes your business unique",
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 114, horizontal: 406),
                                                  hintStyle: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  // labelText: 'Enter something',
                                                  // Set border for enabled state (default)
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                    borderRadius: BorderRadius.circular(7),
                                                  ),
                                                  // Set border for focused state
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 2, color: Colors.red),
                                                    borderRadius: BorderRadius.circular(7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 36,),
                                    Container(
                                      width: 344,
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 20,),
                                          const SizedBox(
                                            height: 20,
                                            width: 141,
                                            child: Text("Upload Your Photo",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(255, 246, 6, 86)
                                            ),)
                                          ),
                                          const SizedBox(height: 14,),
                                          SizedBox(
                                            height: 262,
                                            width: 344,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                // hintText: "Tell your customer about yourself and what makes your business unique",
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 262, horizontal: 406),
                                                  hintStyle: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  // labelText: 'Enter something',
                                                  // Set border for enabled state (default)
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                    borderRadius: BorderRadius.circular(7),
                                                  ),
                                                  // Set border for focused state
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(width: 2, color: Colors.red),
                                                    borderRadius: BorderRadius.circular(7),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 40,),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0,right: 70),
                              child: Container(
                                height: 48,
                                width: 786,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 246, 6, 86)),
                                  onPressed: () async {
                                  },
                                  child:
                                  Container(
                                      height: 20,
                                      width: 38.87,
                                      child: const Text('Next', style: TextStyle(fontSize: 16))
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 70),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
