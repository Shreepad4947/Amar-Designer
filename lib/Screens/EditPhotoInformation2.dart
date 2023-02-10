import 'package:amardesigner/Data/recentProjectData.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EditPhoto2 extends StatefulWidget {
  const EditPhoto2({super.key});

  @override
  State<EditPhoto2> createState() => _EditPhoto2State();
}

class _EditPhoto2State extends State<EditPhoto2> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    final List<String> imageList = [
    "image/img4.PNG",
    "image/img4.PNG",
    "image/img4.PNG",
    "image/img4.PNG",
    "image/img4.PNG",
   ];

    return Scaffold(
      backgroundColor:Colors.grey[200] ,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left:80.0,right:80,top:50),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: width*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:80.0,bottom:10),
                    child: Container(
                      child:const Text("Edit Photo Information",style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: 30),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:80.0,bottom:20),
                    child: Container(
                      child:const Text("Click the 'Done' button on top when finished",
                      style: TextStyle(color: Colors.grey,decoration: TextDecoration.none,fontSize: 12),),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left:80.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      Stack(
                        children: [
                        Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                        width: width*0.4,height:height*0.8,
                         child: CarouselSlider(
                           options: CarouselOptions(
                             enableInfiniteScroll: false,
                             enlargeCenterPage: true,
                             viewportFraction: 1,
                             autoPlay: true,
                           ),
                           items: imageList.map((e) => Padding(
                             padding: const EdgeInsets.only(top:90,bottom: 90,left:150,right:150),
                             child: Container(
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
                             ),
                           )).toList(),
                         ),
                       ),
                  
                       Positioned(
                        top: height*0.35,
                        left: 100,
                         child: Stack(
                          alignment: Alignment.center,
                          children:[
                          Container(
                                    height:width*0.04,width:width*0.04,
                                      decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.circular(width*0.04)),
                                  ),
                                    const Icon(Icons.navigate_before_outlined,color: Colors.white,)
                                  ]
                                  )
                       ),
                  
                                Positioned(
                                  top: height*0.35,
                                  right:100,
                                  child: Stack(
                                     alignment: Alignment.center,
                                    children:[
                                      Container(
                                        
                                      height:width*0.04,width:width*0.04,decoration: BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.circular(width*0.04)),
                                    ),
                                    const Icon(Icons.navigate_next_outlined,color: Colors.white,)
                                    ] 
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  // right:30,
                                  left:30,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:  [
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Icon(Icons.replay_outlined),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Icon(Icons.replay_outlined,),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                alignment: Alignment.center,
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Text("Replace",textAlign: TextAlign.center),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                alignment: Alignment.center,
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Text("Remove",textAlign: TextAlign.center),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                alignment: Alignment.center,
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Text("Copy Data",textAlign: TextAlign.center),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                alignment: Alignment.center,
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Text("Paste Data",textAlign: TextAlign.center),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Container(
                                                                alignment: Alignment.center,
                                                                height: 30,
                                                                width:80,
                                                                decoration: BoxDecoration(
                                                                color: Colors.grey[100],
                                                                borderRadius: BorderRadius.circular(8)),
                                                                child: Text("Close",textAlign: TextAlign.center),
                                                              ),
                                                            ),
                                                          ],),
                                )
                      ]),
                       
                       Padding(
                         padding: const EdgeInsets.only(left:30.0),
                         child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                         width: width*0.3,
                         height:height*0.8,
                         child:Padding(
                           padding: const EdgeInsets.all(30.0),
                           child: Column(children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Title",style: TextStyle(fontSize: 12),),
                                        ),),
                                      SizedBox(
                                        height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                         padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Category",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Style",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Country",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("City",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                         padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Pin Code",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                         
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Link to Website",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 35,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Keywords (Separated by comma)",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 50,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  child:Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom:3.0),
                                          child: Text("Description",style: TextStyle(fontSize: 12),),
                                        )),
                                      SizedBox(height: 50,
                                        child: TextField( decoration: InputDecoration( 
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 1, color: Color(0xFFDCDBDD)),
                                                              borderRadius: BorderRadius.circular(7),  ),    focusedBorder: OutlineInputBorder(
                                                              borderSide: const BorderSide(width: 2, color:  Color.fromARGB(255, 246, 6, 86)),
                                                              borderRadius: BorderRadius.circular(7),
                                                            )),
                                                      ),
                                      ),
                                    ],
                                  )
                                 ),
                               ),

                               Padding(
                                 padding: const EdgeInsets.only(top:10.0),
                                 child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                   
                                 TextButton(
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
                                           color: Colors.grey),
                                       width: width * 0.05,
                                       height: 35,
                                       child: const Text(
                                         "Cancel",
                                         style: TextStyle(color: Colors.white),
                                         textAlign: TextAlign.center,
                                       )),
                                 ),
                                                       
                                                         
                                                       TextButton(
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
                                                                 color: const Color.fromARGB(255, 246, 6, 86)),
                                                             width: width * 0.05,
                                                             height: 35,
                                                             child: const Text(
                                                               "Done",
                                                               style: TextStyle(color: Colors.white),
                                                               textAlign: TextAlign.center,
                                                             )),
                                                       ),
                                                      ],),
                               )
                           ],),
                         )
                         ),
                       )
                     ],
                   ),
                 ),
                 
                ],
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
