import 'package:animated/home4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_connect/http/src/utils/utils.dart';

// ignore: camel_case_types
class home3 extends StatefulWidget {
  const home3({super.key});

  @override
  State<home3> createState() => _home3State();
}

// ignore: camel_case_types
class _home3State extends State<home3> {
//_____
  double left = 0;
  //
  Color co = Colors.black;
  double fsize = 15;
  String text = "Good evening";

  ///______
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 245, 248, 249),
                Color.fromARGB(255, 0, 2, 69)
              ]),
        ),
        child: ListView(
          children: [
//1

            //AnimatedPositioned
            SizedBox(
              height: 200,
              child: InkWell(
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
                            color: const Color.fromARGB(255, 251, 245, 69),
                          ),
                          child: const Center(child: Icon(Icons.sunny)),
                        ),
                      ),
                      //
                      AnimatedPositioned(
                        duration: const Duration(seconds: 2),
                        left: left,
                        top: left,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            child: const Center(
                              child: Icon(Icons.nightlight),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            //_____________________________
            //////AnimatedDefaultTextStyle
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                text = "Good morning";
                fsize = 40;
                co = const Color.fromARGB(255, 255, 251, 0);
                setState(() {});
              },
              child: AnimatedDefaultTextStyle(
                  style: TextStyle(fontSize: fsize, color: co),
                  duration: const Duration(seconds: 2),
                  child: Center(child: Text(text))),
            ),

            ///
            const SizedBox(
              height: 400,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const home4());
                  },
                  child: const Text("4")),
            )
          ],
        ),
      ),
    );
  }
}
