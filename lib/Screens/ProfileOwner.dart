import 'package:flutter/material.dart';

class ProfileOwner extends StatefulWidget {
  const ProfileOwner({super.key});

  @override
  State<ProfileOwner> createState() => _ProfileOwnerState();
}

class _ProfileOwnerState extends State<ProfileOwner> {


  
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      body: Container(
        width:width,
        color:Colors.grey[200],
        child:Align(alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Column(
                children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:height*0.25,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                    child: 
                  Image.asset("image/Capture3.PNG"),),
                ),
              ),
              
              Positioned(right:0,
                child: Container(child:
                Container(color:Colors.amber,
                  child: Row(
                        children: [
                          Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Container(
                    width:60,
                    color:Colors.blue, 
                  child: Text("User Name")),
                ),
                          TextButton(
                            onPressed: () { },
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
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
                                    color: Color.fromARGB(255, 246, 6, 86)),
                                height: 40,
                                width: width * 0.1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.edit,
                                        color: Colors.white),
                                    Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
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
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color.fromARGB(255, 246, 6, 86)),
                                  width: width * 0.2,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.remove_red_eye_outlined,
                                          color: Colors.white),
                                      Text(
                                        "preview public profile",
                                        style: TextStyle(color: Colors.white ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                )),
              )
                        ],),

            Positioned(
              top:height*0.15 ,
              left:4,
              child: const CircleAvatar(
                radius: 84,
                backgroundColor: Color.fromARGB(255, 202, 202, 202),
              ),
            )
            ]
          ),
        )
      ),
    );
  }
}