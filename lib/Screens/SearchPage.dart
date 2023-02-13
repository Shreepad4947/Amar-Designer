import "package:amardesigner/Data/SearchData.dart";
import "package:flutter/material.dart";

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;

    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Text(
                      "1,20,003 Home Improvement Pros",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 246, 6, 86)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Get matched with local professionals",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Answer a few questions and we’ll put you in touch with pros who can help",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: width * 0.35,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEDEDF0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(8)),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: '1300',
                                      prefixIcon: Icon(
                                        Icons.location_on_outlined,
                                        color: Color.fromARGB(255, 246, 6, 86),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(8)),
                                    ),
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("Get Started",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        )))
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1)),
                          child: const Text("Residential",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1)),
                          child: const Text("Commercial",
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1)),
                          child: const Text("Hospitality",
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1)),
                          child: const Text("Trunkey",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1)),
                          child: const Text("Other",
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: SearchData.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width:width*0.8,
                            height:height*0.3,
                            color: Colors.white,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Container(width:width*0.3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    child: Image.asset(SearchData[index]["image"])),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [Row(children: [
                                      CircleAvatar(radius: 20,backgroundColor: Colors.grey),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(children: [
                                          Text(SearchData[index]["title"],style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                                                          Text(SearchData[index]["Designs"],style:TextStyle(color: Colors.black,fontSize: 10)),
                                        ]),
                                      ),
                                    
                                    ],),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(child: Text(SearchData[index]["Info"],overflow: TextOverflow.clip,style: TextStyle(fontSize: 10))),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("View More >",style:TextStyle(color: Color.fromARGB(255, 246, 6, 86),fontSize: 10)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on,color:Color.fromARGB(255, 246, 6, 86) ,),
                                          Container(width:width*0.2,
                                            child: Text(SearchData[index]["address"],overflow: TextOverflow.fade,style: TextStyle(fontSize: 10,))),
                                        ],
                                      ),
                                    ),
                                  ],),
                                ),
                              ),
                              Container(
                                child:Column(children: [
                                  SizedBox(height:10),
                                  TextButton(
                                    onPressed: () {   },
                                    child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            color: Color.fromARGB(255, 246, 6, 86)),
                                        height: 35,
                                        width: width * 0.15,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(Icons.messenger_outline,
                                                  color: Colors.white),
                                              Text(
                                                "Send a Messege",
                                                style: TextStyle(color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1,color: Colors.grey),
                                                borderRadius: BorderRadius.circular(6),
                                                color: Colors.white),
                                            width: width * 0.07,
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children:  [
                                                Icon(Icons.thumb_up_alt_outlined,
                                                    color: Colors.grey[300]),
                                                const Text(
                                                  "save",
                                                  style: TextStyle(color: Colors.grey,fontSize: 10),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            )),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1,color: Colors.grey),
                                                borderRadius: BorderRadius.circular(6),
                                                color: Colors.white),
                                            width: width * 0.07,
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.share_outlined,
                                                    color: Colors.grey[300]),
                                                const Text(
                                                  "share",
                                                  style: TextStyle(color: Colors.grey,fontSize: 10),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ],)
                              ),
                            ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
