import 'package:animated/homw7.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home6 extends StatefulWidget {
  const home6({super.key});

  @override
  State<home6> createState() => _home6State();
}

// ignore: camel_case_types
class _home6State extends State<home6> {
  //

  Color colorcontainer = const Color.fromARGB(255, 0, 0, 0);
  double h = 100;
  double w = 100;
  double br = 50;
  //
  double op = 1;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 12, 0),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 126, 0, 157),
                Color.fromARGB(255, 0, 0, 0)
              ]),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            //AnimatedContainer
            Center(
              child: InkWell(
                onTap: () {
                  colorcontainer = const Color.fromARGB(245, 125, 2, 179);
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
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 6,
                            blurRadius: 10,
                          ),
                        ]),
                    width: w,
                    height: h,
                  ),
                ),
              ),
            ),
            /////////___________________________________________
            /////AnimatedOpacity
            InkWell(
              onTap: () {
                op = 0;
                setState(() {});
              },
              child: AnimatedOpacity(
                curve: Curves.easeInOut,
                opacity: op,
                duration: const Duration(seconds: 4),
                child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://wallpaperaccess.com/full/5825829.jpg")),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black //
                        ),
                    child: const Center(
                        child: Text(
                      "Game",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
                  ),
                ),
              ),
            ),
            //
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const home7());
                },
                child: const Text("7"))
          ],
        ),
      ),
    );
  }
}
