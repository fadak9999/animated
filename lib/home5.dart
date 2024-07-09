import 'package:animated/home6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class home5 extends StatefulWidget {
  const home5({super.key});

  @override
  State<home5> createState() => _home5State();
}

// ignore: camel_case_types
class _home5State extends State<home5> {
  //
  double h = 100;
  double w = 100;
  String text = "cat?!";
  Color color = const Color.fromARGB(255, 73, 72, 72);
  Color colors = const Color.fromARGB(255, 252, 255, 63);
  AlignmentGeometry alignmentGeometry = Alignment.topLeft;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 249, 2),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 12, 12, 0),
                Color.fromARGB(255, 64, 4, 246),
              ]),
        ),
        child: ListView(
          children: [
            ///AnimatedSize
            InkWell(
              onTap: () {
                text = "Meowwww!!";
                color = const Color.fromARGB(255, 33, 1, 113);
                w = 300;
                h = 300;
                setState(() {});
              },
              child: AnimatedSize(
                duration: const Duration(seconds: 1),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 245, 249, 2),
                            Color.fromARGB(255, 245, 246, 239)
                          ]),

                      //
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1000),
                          bottomRight: Radius.circular(250)),
                      color: Colors.amber),
                  height: h,
                  width: w,
                  child: Center(
                      child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: color),
                  )),
                ),
              ),
            ),
            //
            const SizedBox(
              height: 30,
            ),

            ///AnimatedAlign
            SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Stack(children: [
                  const Text(
                    "  ^. .^",
                    style: TextStyle(
                        color: Color.fromARGB(255, 252, 223, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      colors = Colors.white;
                      alignmentGeometry = Alignment.center;
                      setState(() {});
                    },
                    child: AnimatedAlign(
                      alignment: alignmentGeometry,
                      duration: const Duration(seconds: 1),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: colors),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            //////6
            ElevatedButton(
                onPressed: () {
                  Get.to(const home6());
                },
                child: const Text("6"))
          ],
        ),
      ),
    );
  }
}
