import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(backgroundColor:Colors.grey[200] ,
      body: Align(alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(width:width*0.8,height:height*0.8,
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container( width:width*0.4,
                child: Center(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const SizedBox(height:20),
                    const Text("Contact Us",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    const SizedBox(height:20),
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text("Name",style:TextStyle(fontSize: 15,color: Colors.grey)),
                     ),
                     Container(width:width*0.35,height:height*0.05,color: Colors.white,
                       child: TextField(
                                                decoration: InputDecoration(
                                                    hintText: "http://",
                                                    hintStyle: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                    contentPadding:
                                                    const EdgeInsets.symmetric(vertical: 48, horizontal: 406),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                      borderRadius: BorderRadius.circular(7),
                                                    ),)
                                              ),
                     ),
                     const SizedBox(height:20),
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text("Email Id",style:TextStyle(fontSize: 15,color: Colors.grey)),
                     ),
                     Container(width:width*0.35,height:height*0.05,color: Colors.white,
                       child: TextField(
                                                decoration: InputDecoration(
                                                    hintText: "http://",
                                                    hintStyle: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                    contentPadding:
                                                    const EdgeInsets.symmetric(vertical: 48, horizontal: 406),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                      borderRadius: BorderRadius.circular(7),
                                                    ),)
                                              ),
                     ),
                     const SizedBox(height:20),
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text("Message",style:TextStyle(fontSize: 15,color: Colors.grey)),
                     ),
                     Container(width:width*0.35,height:height*0.1,color: Colors.white,
                       child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                    const EdgeInsets.symmetric(vertical: 48, horizontal: 406),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                      borderRadius: BorderRadius.circular(7),
                                                    ),)
                                              ),
                     ),
                     const SizedBox(height: 20,),
                              Container(
                                height: height*0.04,
                                width: width*0.08,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 246, 6, 86)),
                                  onPressed: () async {
                                  },
                                  child:
                                  Container(
                                      height: 20,
                                      width: 38.87,
                                      child: const Text('Send', style: TextStyle(fontSize: 16))
                                  ),
                                ),
                              ),
                  ],),
                )),
                Align(alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(height:height*0.6,width: width*0.4,
                    child:Image.asset("image/Rectangle813.png")),
                  ),
                )
            ],)
          ),
        ),
      ),
    );
  }
}