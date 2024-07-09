import 'package:flutter/material.dart';

// ignore: camel_case_types
class home7 extends StatefulWidget {
  const home7({super.key});

  @override
  State<home7> createState() => _home7State();
}

// ignore: camel_case_types
class _home7State extends State<home7> {
  //

  Color colorcontainer = const Color.fromARGB(255, 0, 0, 0);
  double h = 100;
  double w = 100;
  double br = 50;
//

  Color colorcontainer2 = const Color.fromARGB(255, 0, 0, 0);
  double h2 = 100;
  double w2 = 100;
  double br2 = 0;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(108, 247, 247, 244),
                Color.fromARGB(255, 255, 230, 0)
              ]),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //AnimatedContainer
                      InkWell(
                        onTap: () {
                          colorcontainer =
                              const Color.fromARGB(245, 255, 234, 0);
                          h = 100;
                          w = 50;
                          br = 1000;

                          setState(() {});
                        },
                        child: AnimatedContainer(
                          // margin: EdgeInsets.only(left: 100),
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
//
                      const SizedBox(
                        width: 1,
                      ),
                      //
                      //AnimatedContainer
                      InkWell(
                        onTap: () {
                          colorcontainer =
                              const Color.fromARGB(245, 125, 2, 179);
                          h = 150;
                          w = 150;
                          br = 1000;

                          setState(() {});
                        },
                        child: AnimatedContainer(
                          margin: const EdgeInsets.only(left: 100),
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
                    ],
                  ),
                  ///////////
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
            //AnimatedContainer
            Center(
              child: InkWell(
                onTap: () {
                  colorcontainer2 = const Color.fromARGB(245, 125, 2, 179);
                  h2 = 150;
                  w2 = 150;
                  br2 = 1000;

                  setState(() {});
                },
                child: Center(
                  child: AnimatedContainer(
                    // margin: EdgeInsets.only(left: 100),
                    curve: Curves.elasticIn,
                    //flutter curve
                    //bounceIn,ease,easeIn
                    duration: const Duration(seconds: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(br2),
                            bottomRight: Radius.circular(br2)),
                        color: colorcontainer,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 98, 98, 98),
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
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
