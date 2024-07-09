// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class tow10 extends StatefulWidget {
  const tow10({super.key});

  @override
  State<tow10> createState() => _tow10State();
}

// ignore: camel_case_types
class _tow10State extends State<tow10> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(title: const Text("Tween Animation Builder")),
      body: ListView(
        children: [
          TweenAnimationBuilder(
            tween: Tween(begin: 100.0, end: 200.0),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Container(
                margin: const EdgeInsets.only(right: 200),
                height: value,
                width: value,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(1000)),
                    color: Colors.amber),
              );
            },
          ),
          //2

          const SizedBox(
            height: 330,
          ),
          SizedBox(
            width: 100,
            height: 300,
            child: TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.amber, end: Colors.purple),
              duration: const Duration(seconds: 4),
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 100),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(1000),
                          topRight: Radius.circular(1000),
                        ),
                        color: value),
                    //  color: value,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
