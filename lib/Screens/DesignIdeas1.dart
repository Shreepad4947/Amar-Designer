import 'package:flutter/material.dart';
import 'package:amardesigner/Data/SampleData.dart';

class DesignIdeas1 extends StatefulWidget {
  const DesignIdeas1({super.key});

  @override
  State<DesignIdeas1> createState() => _DesignIdeas1State();
}

class _DesignIdeas1State extends State<DesignIdeas1> {
  @override
  Widget build(BuildContext context) {


    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Expanded(
      flex: 1,
      child: GridView.builder(
        primary: false,
        shrinkWrap: false,
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
        
        itemBuilder: (context, index) {
          return Container(
                  width:width*0.25,
                  // height:height*0.33,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
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
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6)),
                  child: Image.asset(productList[index]['image'],fit: BoxFit.fill,
                  width:width*0.25,
                  ),
                ),

                const SizedBox(
                  height: 6,
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          productList[index]['title'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color:Colors.black,
                            decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.grid_view_outlined,color: Color.fromARGB(255, 246, 6, 86,)),
                      const SizedBox(
                    // width: 1,
                  ),
                      Text(
                        productList[index]['Designs'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color:Color.fromARGB(255, 246, 6, 86,),
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
          );
        },
      ),
    );
  }
}
