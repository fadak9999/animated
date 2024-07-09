import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  //________________
//conteaner

  double w = 200;
  double h = 200;
  Color colorcontainer = Colors.amber;
  double br = 10;

  //opacity

  double op = 1;

  //text

  double fz = 30;
  Color co = const Color.fromARGB(255, 13, 255, 1);

  ///________________

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          //AnimatedContainer
          Center(
            child: InkWell(
              onTap: () {
                colorcontainer = const Color.fromARGB(245, 43, 62, 204);
                h = 300;
                w = 300;
                br = 1000;
                setState(() {});
              },
              child: Center(
                child: AnimatedContainer(
                  curve: Curves.elasticInOut,
                  //flutter curve
                  //bounceIn,ease,easeIn
                  duration: const Duration(seconds: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(br),
                    color: colorcontainer,
                  ),
                  width: w,
                  height: h,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          /////AnimatedOpacity//الشفافية
          InkWell(
            onTap: () {
              op = 0.0;
              setState(() {});
            },
            child: AnimatedOpacity(
              curve: Curves.ease,
              opacity: op, //تحديد مستوى الشفافية
              duration: const Duration(seconds: 2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  color: const Color.fromARGB(255, 19, 177, 170),
                ),
              ),
            ),
          ),
          //////AnimatedDefaultTextStyle
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              fz = 60;
              co = Colors.purple;
              setState(() {});
            },
            child: AnimatedDefaultTextStyle(
                style: TextStyle(fontSize: fz, color: co),
                duration: const Duration(seconds: 2),
                child: const Center(child: Text("meow"))),
          ),
          //////end
        ],
      ),
    );
  }
}
