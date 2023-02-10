import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Middleware/route.dart';

class ChoseUserType extends StatefulWidget {
  const ChoseUserType({super.key});

  @override
  State<ChoseUserType> createState() => _ChoseUserTypeState();
}

class _ChoseUserTypeState extends State<ChoseUserType> {
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
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              height: height * 0.6,
              width: width * 0.5,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      const Text(
                        "Which Describe you best ?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: height * 0.3,
                          width: width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selection = 0;
                                    });
                                  },
                                  child: Container(
                                      width: width * 0.13,
                                      decoration: BoxDecoration(
                                          color: (selection == 0)
                                              ? Color.fromARGB(255, 246, 6, 86)
                                              : Colors.grey,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Column(
                                        children: const [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Icon(
                                            Icons.personal_injury_outlined,
                                            color: Colors.white,
                                            weight: 25,
                                            size: 80,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Home Owner",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selection = 1;
                                    });
                                  },
                                  child: Container(
                                      width: width * 0.13,
                                      decoration: BoxDecoration(
                                          color: (selection == 1)
                                              ? const Color.fromARGB(
                                                  255, 246, 6, 86)
                                              : Colors.grey,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            width: width * 0.13,
                                            child: const Icon(
                                              Icons.business_center_outlined,
                                              color: Colors.white,
                                              size: 80,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Professionals",
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: width * 0.13,
                              child: const Text(
                                "I am a HomeOwner, Interested in home design",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    overflow: TextOverflow.fade,
                                    fontSize: 10,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              width: width * 0.13,
                              child: const Text(
                                "I am a Home improvement services or sell home product",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    overflow: TextOverflow.fade,
                                    fontSize: 10,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 246, 6, 86)),
                        onPressed: () async {
                          if (selection == 0) {
                            Get.toNamed(Routes.getHomeRoute());
                          } else if (selection == 1) {
                            Get.toNamed(Routes.getProfileRoute());
                          } else {}
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("error")));
                        },
                        child: const Text('continue',
                            style: TextStyle(fontSize: 16)),
                      ),
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
