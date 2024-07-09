import 'package:animated/home5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home4 extends StatefulWidget {
  const home4({super.key});

  @override
  State<home4> createState() => _home4State();
}

// ignore: camel_case_types
class _home4State extends State<home4> {
  //

  double pading = 20;
  String textt = "Hi";
  //
  BoxShape shapev = BoxShape.rectangle;
  double elevation = 0.0;
  Color color = const Color.fromARGB(255, 0, 0, 0);

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AnimatedPadding & AnimatedPhysicalModel",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 250, 217),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 3, 250, 217),
                Color.fromARGB(253, 120, 4, 192)
              ]),
        ),

        ///
        child: ListView(
          children: [
//AnimatedPadding
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  pading = 60;
                  textt = "AnimatedPadding";
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 215, 97, 255),
                          Color.fromARGB(255, 97, 255, 255),
                        ]),
                  ),
                  height: 200,
                  width: 200,
                  child: AnimatedPadding(
                    duration: const Duration(seconds: 1),
                    padding: EdgeInsets.all(pading),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 97, 255, 255),
                              Color.fromARGB(255, 174, 61, 219)
                            ]),
                      ),
                      height: 200,
                      width: 100,
                      child: Center(child: Text(textt)),
                    ),
                  ),
                ),
              ),
            ),

            ///____________________
            const Divider(),
            //AnimatedPhysicalModel
            Padding(
              padding: const EdgeInsets.all(40),
              child: InkWell(
                onTap: () {
                  color = const Color.fromARGB(255, 119, 2, 169);
                  shapev = BoxShape.circle;
                  elevation = 59;
                  setState(() {});
                },
                child: AnimatedPhysicalModel(
                  shape: shapev,
                  elevation: elevation,
                  color: color,
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  duration: const Duration(seconds: 2),
                  child: const SizedBox(
                    height: 300,
                    width: 300,
                    child: Center(
                        child: Text(
                      "Hussein",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
            ),
            //
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const home5());
                },
                child: const Text("5")),
          ],
        ),
      ),
    );
  }
}
