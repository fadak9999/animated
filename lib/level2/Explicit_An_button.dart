// ignore: file_names
import 'package:animated/level2/Explicit_A_properties.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Explicit_A_button extends StatefulWidget {
  const Explicit_A_button({super.key});

  @override
  State<Explicit_A_button> createState() => _Explicit_A_buttonState();
}

//with SingleTickerProviderStateMixin اضافة
// ignore: camel_case_types
class _Explicit_A_buttonState extends State<Explicit_A_button>
    with SingleTickerProviderStateMixin {
  //
  late AnimationController animationController;

  @override
  void initState() {
    //
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        lowerBound: 100,
        upperBound: 300);
    //
    super.initState();
  }

  //______________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 27, 82),
        title: const Text(
          "Explicit Animaton",
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///''
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 174, 170, 114),
                Color.fromARGB(255, 33, 27, 82),
                Color.fromARGB(255, 174, 170, 114),
              ]),
        ),
        child: ListView(
          children: [
            //1
            AnimatedBuilder(
              animation: animationController,
              // child: Text("llllllllllk;"),
              builder: (context, child) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    // color: Color.fromARGB(255, 189, 87, 187),
                    height: animationController.value,
                    width: animationController.value,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.youm7.com/ArticleImgs/2019/8/7/144405-%D9%84%D9%88%D8%AD%D8%A9-%D8%A7%D9%84%D8%A7%D9%85%D9%88%D8%A7%D8%AC-%D8%A7%D9%84%D9%87%D8%A7%D8%A6%D9%84%D8%A9.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(400)),
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 80)
                        ]),
                    child: const Column(
                      children: [
                        //  child!,

                        ///////
                      ],
                    ),
                  ),
                );
              },
            ),

            ///2
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Wrap(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        animationController.forward();
                      },
                      child: const Text("forward")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        animationController.reverse();
                      },
                      child: const Text("Reverse")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        animationController.stop();
                      },
                      child: const Text("stop")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        animationController.repeat();
                      },
                      child: const Text("repewt")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        animationController.reset();
                      },
                      child: const Text("reset")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(const Explicit_A_properties());
                      },
                      child: const Text("Explicit_A_pro..")),
                ],
              ),
            ),

            ////
          ],
        ),
      ),
    );
  }
}
