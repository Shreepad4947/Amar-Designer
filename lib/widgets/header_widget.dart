import 'package:amardesigner/Data/HeaderData.dart';
import 'package:amardesigner/widgets/onHowerButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Middleware/route.dart';

class HeaderWidget extends StatefulWidget {
  HeaderWidget({
    Key? key,
    // required this.size,
    // required this.username,
  }) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  TextEditingController searchController = TextEditingController();
  late int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final height = screenSize.height;
    final userName = "";

    return Container(
      // height:height*0.1,
      // color: Colors.white,
      child: Expanded(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 8),
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: Image(
                          image: AssetImage('image/title.jpeg'),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 44,
                          width: width * 0.35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: const BoxDecoration(
                            color: Color(0xFFEDEDF0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              hintText:
                                  ' Search Photos, Products, Pros and More',
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              suffixIcon: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    print('clear field');
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    size: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            (userName == '')
                                ? Get.toNamed(Routes.getSignUpRoute())
                                : Get.toNamed(Routes.getProfileRoute());
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
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
                                  color: Color.fromARGB(255, 246, 6, 86)),
                              height: 40,
                              width: width * 0.06,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.person_outline_sharp,
                                      color: Colors.white),
                                  Text(
                                    (userName == '') ? "Sign In" : userName,
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          width: 10,
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
                                    color: Color.fromARGB(255, 246, 6, 86)),
                                width: width * 0.07,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.workspace_premium_outlined,
                                        color: Colors.white),
                                    Text(
                                      "Join as a Pro",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ...category.map(
                        (index) => Expanded(
                          child:
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = category.indexOf(index);
                              });
                            },

                          child: OnHowerButton(builder: (isHovered) {
                            isHovered
                                ? selectedIndex = category.indexOf(index)
                                : -1;

                            return Container(
                              height: 50,
                              width: width * 0.2,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.post_add_outlined),
                                  const SizedBox(width: 3),
                                  Text(
                                    index.toUpperCase(),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  selectedIndex == -1
                      ? const SizedBox()
                      : Container(
                          color: Colors.grey.withOpacity(0.9),
                          height: height * 0.3,
                          width: width,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  dataList[selectedIndex]["title"],
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 246, 6, 86),
                                      fontSize: 20),
                                ),
                              ),
                              ...dataList[selectedIndex]["items"].map(
                                (e) => Text(e,
                                    style: const TextStyle(fontSize: 15)),
                              ),
                            ],
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
