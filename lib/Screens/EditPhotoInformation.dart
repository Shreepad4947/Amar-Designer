import 'package:amardesigner/Data/recentProjectData.dart';
import 'package:flutter/material.dart';

class EditPhoto extends StatefulWidget {
  const EditPhoto({super.key});

  @override
  State<EditPhoto> createState() => _EditPhotoState();
}

class _EditPhotoState extends State<EditPhoto> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30.0,bottom:10),
              child: Container(
                child:const Text("Edit Phot Information",style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: 30),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30.0,bottom:10),
              child: Container(
                child:const Text("Click the 'Done' button on top when finished",
                style: TextStyle(color: Colors.grey,decoration: TextDecoration.none,fontSize: 10),),
              ),
            ),
            Padding(
                            padding: const EdgeInsets.all(20.0), 
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:List.generate(   
                              recentProject.length,
                              (index) =>
                               
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Stack(
                                      alignment: Alignment.topRight,
                                       children: [Container(
                                          // height: height*0.27,
                                          width: width*0.2,
                                          margin: const EdgeInsets.all(2),
                                          // padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                      color: Colors.grey.withOpacity(0.3),
                                                      blurRadius: 10,
                                                      spreadRadius: 1,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        ClipRRect(
                                                      borderRadius: const BorderRadius.only(
                                                      topLeft: Radius.circular(8),
                                                      topRight: Radius.circular(8)),
                                                                   child: Image.asset(
                                                                       recentProject[index]['image'],
                                                                       width: width * 0.2,
                                                                       fit: BoxFit.fill),
                                                                 ),
                                                      ],
                                              ), 
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                        children: [
                                                          const Icon(Icons.circle,color: Color.fromARGB(255, 194, 191, 191)),
                                                          const SizedBox(
                                                        width: 3,
                                                ),
                                                          Text(
                                                            recentProject[index]['Designs'],
                                                            style: const TextStyle(
                                                                            fontWeight: FontWeight.w600,
                                                                            fontSize: 15,
                                                                            color:Colors.black,
                                                                            decoration: TextDecoration.none
                                                            ),
                                                          ),
                                                        ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            height:20,width: 20,
                                            decoration: BoxDecoration(
                                              color:Colors.white,
                                              borderRadius: BorderRadius.circular(5)),
                                          ),
                                        )
                                        ]
                                     ),
                                   )
                                   
                              ),
                              
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Row(children: [
                              
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
                                  width: width * 0.15,
                                  height: 40,
                                  child: const Text(
                                    "Upload",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )),
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
                                      color: const Color.fromARGB(255, 246, 6, 86)),
                                  width: width * 0.15,
                                  height: 40,
                                  child: const Text(
                                    "Remove Photos",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  )),
                            ),
                                                  ),
                                                 ],),
                          )

          ],
          
        ),
      ),
    );
  }
}
