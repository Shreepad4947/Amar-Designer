import 'package:amardesigner/Data/sampleHome.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PostLog extends StatefulWidget {
  const PostLog({super.key});

  @override
  State<PostLog> createState() => _PostLogState();
}

class _PostLogState extends State<PostLog> {
  @override
  Widget build(BuildContext context) {

final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;

    final List<String> imageList = [
    "image/img5.PNG",
    "image/img6.PNG",
    "image/img5.PNG",
    "image/img6.PNG",
    "image/img5.PNG",
   ];

    return Scaffold(
      body: Container(color:Colors.grey[200],
      child:Padding(
        padding: const EdgeInsets.only(left:10.0,right:10,top:30),
        child: Column(
          children: [
            Container(
               height:height*0.5,width:width*0.85,color:Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top:30.0,left:8,right:8),
                       child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                                      width: width*0.4,height:height*0.4,
                                       child: CarouselSlider(
                                         options: CarouselOptions(
                                           enableInfiniteScroll: false,
                                           enlargeCenterPage: true,
                                           viewportFraction: 1,
                                           autoPlay: true,
                                         ),
                                         items: imageList.map((e) => Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                           child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                             child: Stack(
                                               fit: StackFit.expand,
                                               children: <Widget>[
                                                 Image.asset(e,
                                                 fit: BoxFit.cover,)
                                               ],
                                             ) ,
                                           ),
                                         )).toList(),
                                       ),
                                     ),
                     ),
                   ],
                 ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: SizedBox(
                                  width: width*0.4,height:height*0.7,
                                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                        height:50,
                                        child:
                                                               Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(left:8.0),
                                                      child: CircleAvatar(radius: 20,backgroundColor: Colors.grey),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                          children: const [
                                                          Text("User Name",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,decoration: TextDecoration.none)),
                                                          Text("Location",style:TextStyle(color: Colors.grey,fontSize: 10, decoration: TextDecoration.none)),
                                                        ]),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:58.0),
                                                    child: TextButton(
                                                                                    onPressed: () {},
                                                                                    child: Container(
                                                                                        alignment: Alignment.center,
                                                                                        decoration: BoxDecoration(
                                                                                            borderRadius: BorderRadius.circular(6),
                                                                                            color: Color.fromARGB(255, 246, 6, 86)),
                                                                                        height: 40,
                                                                                        width: width * 0.06,
                                                                                        child: const Text(
                                                                                          "Follow",
                                                                                          style: TextStyle(color: Colors.white),
                                                                                          textAlign: TextAlign.center,
                                                                                        )),
                                                                 ),
                                                  ),
                                                  ],),
                                                  
                                                   ),
                                                   const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("English kitsh",textAlign: TextAlign.start,style:TextStyle(fontSize: 10,decoration: TextDecoration.none,color:Colors.black)),
                                              ),
                                               const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("Electric    Delhi   website",textAlign: TextAlign.start, style:TextStyle(fontSize: 10,decoration: TextDecoration.none,color:Colors.grey)),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("Lorem ipsum dolor sit amet consectetur. Nisi non penatibus fermentum aenean volutpat porttitor pellentesque mi nibh. Vitae integer nisl duis nam ipsum sit ac felis. Bibendum sed elit ac nunc eget senectus. Magna nunc pharetra odio phasellus purus ultrices nisl sed. Bibendum sed elit ac nunc eget senectus. Magna nunc pharetra odio phasellus purus ultrices nisl sed. View more "
                                                ,style:TextStyle(fontSize: 10,decoration: TextDecoration.none,color:Colors.grey)),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("Question about this post",textAlign: TextAlign.start, style:TextStyle(fontSize: 20,decoration: TextDecoration.none,color:Colors.black)),
                                              ),
                                              TextButton(
                                                                              onPressed: () {},
                                                                              child: Container(
                                                                                  alignment: Alignment.center,
                                                                                  decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(6),
                                                                                      color: Color.fromARGB(255, 246, 6, 86)),
                                                                                  height: 40,
                                                                                  width: width * 0.4,
                                                                                  child: const Text(
                                                                                    "Ask a question",
                                                                                    style: TextStyle(color: Colors.white),
                                                                                    textAlign: TextAlign.center,
                                                                                  )),
                                                           ),
                                     ],
                                   ),
                                              
                                 ),
                               ),
              ],),
            ),
            Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left:width*0.075,top:20),
                child: Text("Related Posts",textAlign:TextAlign.start,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ),
              ),
            ),
            Container(
              child:
            Expanded(
              child: Container(width: width*0.87,
                child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: InteriorDesigns.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Container(
                            margin: EdgeInsets.all(15),
                            width: width * 0.2,
                            height:height*0.1,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              boxShadow: [BoxShadow( color: Colors.white, blurRadius: 2.0, spreadRadius: 2, offset: Offset(  1, 1,  )),],
                              color: Colors.white,
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
                                        width: width * 0.2,
                                        fit: BoxFit.fill),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text(
                                      InteriorDesigns[index]['title'],
                                      style: const TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(bottom: 5, top: 5),
                                      child: Text(
                                          textAlign: TextAlign.left,
                                          "39 Saves",
                                          style: TextStyle(
                                            fontSize: 6,
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
                            }
                ),
              ),
            ))
          ],
        ),
      )
      ),
    );
  }
}