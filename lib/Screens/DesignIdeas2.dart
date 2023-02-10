import 'package:amardesigner/Data/sampleHome.dart';
import 'package:flutter/material.dart';

class DesignIdeas2 extends StatefulWidget {
  const DesignIdeas2({super.key});

  @override
  State<DesignIdeas2> createState() => _DesignIdeas2State();
}

class _DesignIdeas2State extends State<DesignIdeas2> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Expanded(
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
                  return Container(
                    margin: EdgeInsets.all(30),
                    width: width*0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 2,
                            offset: Offset(
                              1,
                              1,
                            )),
                      ],
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                            child:Image.asset(InteriorDesigns[index]['image'],width: width*0.25,fit: BoxFit.fill),
                          ),
                          
                         Padding(
                           padding: const EdgeInsets.only(top:8.0),
                           child: Text(
                              InteriorDesigns[index]['Info'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                  fontSize: 15,),
                            ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(top:12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    padding:
                                        const EdgeInsets.only(top:5,left:20,right:20,bottom:5),
                                    margin:
                                        const EdgeInsets.only(left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 246, 6, 86),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Text("Get Quote",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                            fontSize: 15, color: Colors.white))),
                                Container(
                                    padding:
                                        const EdgeInsets.only(top:5,left:20,right:20,bottom:5),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: const Text("Book free constration",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                            fontSize: 15, color: Colors.white))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
                ),
          ),
        );
  }
}