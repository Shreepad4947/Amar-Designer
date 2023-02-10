import 'package:amardesigner/Data/SampleData.dart';
import 'package:amardesigner/Data/recentProjectData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Middleware/route.dart';

class AddYourProject extends StatefulWidget {
  const AddYourProject({super.key});

  @override
  State<AddYourProject> createState() => _AddYourProjectState();
}

class _AddYourProjectState extends State<AddYourProject> {
  int selection = -1;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.white),
              height: height * 0.8,
              width: width * 0.6,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      const Text(
                        "Add Your First Project",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "A project is a collection of your work. Projects are one of the key ways homeOwners can find you on amarDesigner",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Recent Project in Your area",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Padding(
                            padding: const EdgeInsets.all(20.0), 
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                
                                children:List.generate(
                                                  
                              3,
                              (index) =>
                               
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Container(
                                        // height: height*0.27,
                                        width: width*0.17,
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
                                            ClipRRect(
                                                    borderRadius: const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight: Radius.circular(8)),
                                                       child: Image.asset(
                                                           recentProject[index]['image'],
                                                           width: width * 0.17,
                                                           fit: BoxFit.fill),
                                                     ), 
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0,left:8,bottom: 10),
                                              child: Row(
                                                      children: [
                                                        const Icon(Icons.circle,color: Color.fromARGB(255, 206, 203, 203)),
                                                        const SizedBox(
                                                      width: 3,
                                              ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              recentProject[index]['Designs'],
                                                              style: const TextStyle(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 15,
                                                                              color:Colors.black,
                                                                              decoration: TextDecoration.none
                                                              ),
                                                            ),
                                                            const Text(
                                                               "11 photos",
                                                               style: TextStyle(
                                                                               fontWeight: FontWeight.w400,
                                                                               fontSize: 8,
                                                                               color:Colors.grey,
                                                                               decoration: TextDecoration.none
                                                               ),
                                                             ),
                                                          ],
                                                        ),
                                                      ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                   )
                              ),
                              ),
                            ),
                          ),
                       Container(
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
                                  height: height*0.27,
                                  width: width*0.2,
                         child:  
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: const EdgeInsets.all(38.0),
                              child: Image.asset("image/createProject.PNG",),
                            ),
                            const SizedBox(
                              height:10
                            ),
                          ],
                         )       
                                  )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
