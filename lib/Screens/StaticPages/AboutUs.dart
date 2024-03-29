import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(color: Colors.grey[200],
          child:Column(children: [
            Image.asset("image/AboutUs/RectangleTop.png"),
             SizedBox(height:height*0.05),
            Text("About US",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height:height*0.05),
            Container(width: width*0.8,
              child: Stack(
                children: [Container(
                  height:height*0.35,width:width*0.45,
                  child:Image.asset("image/AboutUs/Rectangle818.png",fit: BoxFit.fill,)),
                  Positioned(right: 0,top:height*0.045 ,
                    child: Container(
                      height:height*0.25,width:width*0.4,color:Colors.white,
                      child:Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Who ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text("We Are ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 246, 6, 86) ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          child: const Text("We provide a complete service for the sale, purchase or rental of real estate. We provide a complete service for the sale, purchase or rental of real estate. We provide a complete We provide a complete service for the sale, purchase or rental of real estate. We provide a complete"
                                               , overflow: TextOverflow.fade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.grey ),),
                        ),
                      ),
                    ],)),
                  )
                  ]
              ),
            ),
             SizedBox(height:height*0.05),
             Container(width: width*0.8,
              child: Stack(alignment: Alignment.centerRight,
                children: [
                  Container(
                  height:height*0.35,width:width*0.45,
                  child:Image.asset("image/AboutUs/Rectangle821.png",fit: BoxFit.fill,)),
                  Positioned(left: 0,top:height*0.045 ,
                    child: Container(
                      height:height*0.25,width:width*0.4,color:Colors.white,
                      child:Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("What ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text("We Do ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 246, 6, 86) ),),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("We provide a complete service for the sale, purchase or rental of real estate. We provide a complete service for the sale, purchase or rental of real estate. We provide a complete We provide a complete service for the sale, purchase or rental of real estate. We provide a complete"
                        ,overflow: TextOverflow.fade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.grey ),),
                      ),
                    ],)),
                  )
                  ]
              ),
            ),
            SizedBox(height:height*0.05),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("We have a Highly Professional",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" Team of Designers!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(255, 246, 6, 86)),),
            ),
            Container(width:width*0.8,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(textAlign: TextAlign.center,"We provide you with multiple design options to fulfill your expectations & requirement. Design is based on significant study, experience, and trained talent."
                ,style: TextStyle(fontSize: 15,color:Colors.grey),),
              ),
            ),
            Container(width:width*0.8,
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle814.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle815.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle816.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle817.png"),),
              )
            ]),),
            SizedBox(height:height*0.05),
            Container(width: width*0.8,
              child: Stack(
                children: [Container(
                  height:height*0.35,width:width*0.45,
                  child:Image.asset("image/AboutUs/Rectangle822.png",fit: BoxFit.fill,)),
                  Positioned(right: 0,top:height*0.045 ,
                    child: Container(
                      height:height*0.25,width:width*0.4,color:Colors.white,
                      child:Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Our ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text("Value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 246, 6, 86) ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          child: const Text("We provide a complete service for the sale, purchase or rental of real estate. We provide a complete service for the sale, purchase or rental of real estate. We provide a complete We provide a complete service for the sale, purchase or rental of real estate. We provide a complete"
                                               , overflow: TextOverflow.fade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.grey ),),
                        ),
                      ),
                    ],)),
                  )
                  ]
              ),
            ),
             SizedBox(height:height*0.05),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Get Multiple",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Design Options!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Color.fromARGB(255, 246, 6, 86)),),
            ),
            Container(width:width*0.8,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(textAlign: TextAlign.center,"We provide you with multiple design options to fulfill your expectations & requirement. Design is based on significant study, experience, and trained talent."
                ,style: TextStyle(fontSize: 15,color:Colors.grey),),
              ),
            ),
            SizedBox(height:height*0.05),
            Container(width:width*0.8,
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle824.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle825.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle826.png"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: width*0.18,height:width*0.15,
                  child: Image.asset("image/AboutUs/Rectangle827.png"),),
              ),
            ]),),
            SizedBox(height:height*0.05),
             Container(width: width*0.8,
              child: Stack(alignment: Alignment.centerRight,
                children: [
                  Container(
                  height:height*0.35,width:width*0.45,
                  child:Image.asset("image/AboutUs/Rectangle823.png",fit: BoxFit.fill,)),
                  Positioned(left: 0,top:height*0.045 ,
                    child: Container(
                      height:height*0.25,width:width*0.4,color:Colors.white,
                      child:Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Cost ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text("Estimation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Color.fromARGB(255, 246, 6, 86) ),),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("We provide a complete service for the sale, purchase or rental of real estate. We provide a complete service for the sale, purchase or rental of real estate. We provide a complete We provide a complete service for the sale, purchase or rental of real estate. We provide a complete"
                        ,overflow: TextOverflow.fade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.grey ),),
                      ),
                    ],)),
                  )
                  ]
              ),
            ),
          ],)
        ),
    ),
    );
  }
}