// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Explicit_A_properties extends StatefulWidget {
  const Explicit_A_properties({super.key});

  @override
  State<Explicit_A_properties> createState() => _Explicit_A_propertiesState();
}

// ignore: camel_case_types
class _Explicit_A_propertiesState extends State<Explicit_A_properties>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> rotationAnimation;
  late Animation<Offset> translationAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); // لجعل الحركة تتكرر

    rotationAnimation =
        Tween<double>(begin: 0, end: 2 * 3.14).animate(controller);
    translationAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(50, 50))
            .animate(controller);
    //
    scaleAnimation = Tween<double>(begin: 0.2, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit_A_p"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotationAnimation.value,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 137, 117, 183),
                    child: const Text("cat"),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: translationAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset: translationAnimation.value,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 54, 70, 244),
                    child: const Text("cat"),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: scaleAnimation.value,
                  origin: const Offset(100, 100), // اتجاه التكبير من أي زاوية
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 245, 245, 4),
                    child: const Text("cat"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
