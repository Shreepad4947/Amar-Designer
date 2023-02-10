import 'package:amardesigner/Data/HeaderData.dart';
import 'package:amardesigner/Middleware/route.dart';
import 'package:amardesigner/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // late String Index = "";
  late int selectedIndex = -1;
  // late List<String> _index;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.amber,),
          HeaderWidget(),
        ],
      ),
    );
  }
}
