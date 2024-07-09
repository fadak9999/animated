import 'package:animated/home.dart';
import 'package:animated/home2.dart';
import 'package:animated/home3.dart';
import 'package:animated/home4.dart';
import 'package:animated/home5.dart';
import 'package:animated/home6.dart';
import 'package:animated/homw7.dart';
import 'package:animated/level2/Explicit_A_properties.dart';
import 'package:animated/level2/Explicit_An_button.dart';
import 'package:animated/part2/Tween.dart';
import 'package:animated/part2/for12.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

// ignore: camel_case_types
class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: ListView(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ),

          ///

          ElevatedButton(
              onPressed: () {
                Get.to(const home());
              },
              child: const Text("test")),

          //
          ElevatedButton(
              onPressed: () {
                Get.to(const home2());
              },
              child: const Text("test")),
          ////
          ElevatedButton(
              onPressed: () {
                Get.to(const home3());
              },
              child: const Text("moon and sun")),
          ElevatedButton(
              onPressed: () {
                Get.to(const home4());
              },
              child: const Text("H")),
          ElevatedButton(
              onPressed: () {
                Get.to(const home5());
              },
              child: const Text("cat blue")),
          ElevatedButton(
              onPressed: () {
                Get.to(const home6());
              },
              child: const Text("game")),
          ElevatedButton(
              onPressed: () {
                Get.to(const home7());
              },
              child: const Text(":)")),

          ElevatedButton(
              onPressed: () {
                Get.to(const Explicit_A_button());
              },
              child: const Text("Explicit_A_button")),
          ElevatedButton(
              onPressed: () {
                Get.to(const Explicit_A_properties());
              },
              child: const Text("Explicit_A_properites")),
          ElevatedButton(
              onPressed: () {
                Get.to(const tow10());
              },
              child: const Text("Tween Animation Builder")),
          ElevatedButton(
              onPressed: () {
                Get.to(const for12());
              },
              child: const Text("Explicit_A_pro..test")),
        ],
      ),
    );
  }
}
