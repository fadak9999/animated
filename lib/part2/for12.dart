import 'package:flutter/material.dart';

// ignore: camel_case_types
class for12 extends StatefulWidget {
  const for12({super.key});

  @override
  State<for12> createState() => _for12State();
}

//
// ignore: camel_case_types
class _for12State extends State<for12> with SingleTickerProviderStateMixin {
  //
  late AnimationController controller;

  late Animation<AlignmentGeometry> aligncontroller;
  late Animation<double> rotatcontroler;
//
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);

    aligncontroller = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(controller);
    rotatcontroler = Tween<double>(begin: 0, end: 2).animate(controller);
//تشغيل الانميشن
    // controller.forward();
    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //AlignTransition
          AlignTransition(
              alignment: aligncontroller,
              child: RotationTransition(
                turns: rotatcontroler,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(5)),
                      color: Colors.grey),
                ),
              )),
        ],
      ),
    );
  }
}
