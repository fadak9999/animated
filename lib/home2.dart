import 'package:animated/home3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

// ignore: camel_case_types
class _home2State extends State<home2> {
  //

  double left = 0;
  double op = 1;
  BoxShape shapev = BoxShape.rectangle;
  double elevation = 0.0;
  Color color = Colors.blue;

  double pading = 10;
  double h = 100;
  double w = 100;
  AlignmentGeometry alignmentGeometry = Alignment.topLeft;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 186, 0, 253),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 186, 0, 253),
                  Color.fromARGB(255, 244, 244, 157)
                ]),
          ),
          child: ListView(children: [
            //AnimatedPositioned
            InkWell(
                onTap: () {
                  left = 250;
                  setState(() {});
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 209, 150, 230),
                        ),
                        child: const Center(child: Text("MEOW")),
                      ),
                    ),
                    //
                    AnimatedPositioned(
                      duration: const Duration(seconds: 2),
                      left: left,
                      //  top: left,
                      //  bottom: left,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 244, 244, 157)),
                        ),
                      ),
                    ),
                  ],
                )),
            const Divider(),
            ////////////////////
//AnimatedPhysicalModel
            InkWell(
              onTap: () {
                color = const Color.fromARGB(255, 195, 22, 22);
                shapev = BoxShape.circle;
                elevation = 20;
                setState(() {});
              },
              child: AnimatedPhysicalModel(
                shape: shapev, //شكل
                elevation: elevation, //الظل
                color: color,
                shadowColor: Colors.black,
                duration: const Duration(seconds: 2),
                child: const SizedBox(
                  height: 400,
                  child: Center(child: Text("fadak")),
                ),
              ),
            ),
            ///////////////////
//AnimatedPadding
            InkWell(
              onTap: () {
                pading = 60;
                setState(() {});
              },
              child: Container(
                color: Colors.red,
                height: 200,
                child: AnimatedPadding(
                  duration: const Duration(seconds: 1),
                  padding: EdgeInsets.all(pading),
                  child: Container(
                    color: Colors.green,
                    height: 200,
                  ),
                ),
              ),
            ),

/////////////////////
            ///AnimatedSize
            InkWell(
              onTap: () {
                w = 300;
                h = 300;
                setState(() {});
              },
              child: AnimatedSize(
                duration: const Duration(seconds: 1),
                child: Container(
                  height: h,
                  width: w,
                  color: Colors.purple,
                ),
              ),
            ),
            ////////////
            ///AnimatedAlign
            InkWell(
              onTap: () {
                alignmentGeometry = Alignment.bottomCenter;
                setState(() {});
              },
              child: AnimatedAlign(
                alignment: alignmentGeometry, //اتجاه التنسيق للحركة
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 23, 229, 244),
                ),
              ),
            ),
            /////////

            ElevatedButton(
                onPressed: () {
                  Get.to(const home3());
                },
                child: const Text("39yfdh"))
          ]),

          ////////////////////
        ));
  }
}
