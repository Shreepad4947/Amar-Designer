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