import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

class TimeLineItem extends StatefulWidget {
  const TimeLineItem({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeLineItem> createState() => _TlItemState();
}

class _TlItemState extends State<TimeLineItem> {
  var randomList = {
    1: Colors.pink,
    2: Colors.teal,
    4: Colors.pink,
    3: Colors.pink
  };
  bool isCheked = false;

  int random() {
    return Random().nextInt(4);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                child: Container(
                    margin: EdgeInsets.only(left: size.width * .070, right: 20),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: isCheked ? Colors.pink : Colors.transparent,
                      border: Border.all(
                          width: 2,
                          color: isCheked ? Colors.pink : Colors.grey),
                    ))),
            const Text(
              "30.5.2022",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * .1, vertical: 0),
                            child: DottedLine(
                              dashLength: 10,
                              dashColor: isCheked ? Colors.pink : Colors.grey,
                              direction: Axis.vertical,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: size.width * .03,
                          child: !isCheked
                              ? SvgPicture.asset(
                                  "assets/g3.svg",
                                  width: size.width * .08,
                                  height: size.height * .083,
                                  //  color: randomList[random(0, 1)],
                                )
                              : SvgPicture.asset(
                                  "assets/g6.svg",
                                  color: randomList[random()],
                                  width: size.width * .08,
                                  height: size.height * .083,
                                ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(
                      right: size.width * .08,
                      bottom: size.width * .008,
                    ),
                    width: size.width * .60,

                    // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: .8,
                            color:
                                isCheked ? Colors.pink : Colors.transparent)),
                    child: Container(
                      color: Colors.white.withOpacity(.2),
                      child: Stack(
                        children: [
                          Positioned(
                              top: size.height * .025,
                              left: size.width * .04,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: size.height * .05,
                                    width: size.width * .35,
                                    child: const Text(
                                        "Cutie try to sing and talk to your baby &&  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: isCheked
                                              ? Colors.teal.shade300
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isCheked = !isCheked;
                                          });
                                        },
                                        child: isCheked
                                            ? const Text("Done")
                                            : const Text("To do")),
                                  )
                                ],
                              )),
                          Positioned(
                            top: 8,
                            right: 5,
                            bottom: 8,
                            child: SizedBox(
                              width: size.width * .2,
                              height: size.width * .3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: const AssetImage("assets/mother.jpg"),
                                  width: size.width * .25,
                                  height: size.height,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    //ItemDetails(isCheked: isCheked, size: size),
                    ),
              ])),
        ),
        //!secondOne
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * .1, vertical: 0),
                            child: DottedLine(
                              dashLength: 10,
                              dashColor: isCheked ? Colors.pink : Colors.grey,
                              direction: Axis.vertical,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: size.width * .03,
                          child: !isCheked
                              ? SvgPicture.asset(
                                  "assets/g3.svg",
                                  width: size.width * .08,
                                  height: size.height * .083,
                                )
                              : SvgPicture.asset(
                                  "assets/g6.svg",
                                  color: randomList[random()],
                                  width: size.width * .08,
                                  height: size.height * .083,
                                ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(
                      right: size.width * .08,
                      bottom: size.width * .008,
                    ),
                    width: size.width * .60,

                    // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: .8,
                            color:
                                isCheked ? Colors.pink : Colors.transparent)),
                    child: Container(
                      color: Colors.white.withOpacity(.2),
                      child: Stack(
                        children: [
                          Positioned(
                              top: size.height * .025,
                              left: size.width * .04,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: size.height * .05,
                                    width: size.width * .35,
                                    child: const Text(
                                        "Cutie try to sing and talk to your baby &&  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: isCheked
                                              ? Colors.teal.shade300
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isCheked = !isCheked;
                                          });
                                        },
                                        child: isCheked
                                            ? const Text("Done")
                                            : const Text("To do")),
                                  )
                                ],
                              )),
                          Positioned(
                            top: 8,
                            right: 5,
                            bottom: 8,
                            child: SizedBox(
                              width: size.width * .2,
                              height: size.width * .3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: const AssetImage("assets/mother.jpg"),
                                  width: size.width * .25,
                                  height: size.height,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    //ItemDetails(isCheked: isCheked, size: size),
                    ),
              ])),
        ),
        //! theard One
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * .1, vertical: 0),
                            child: DottedLine(
                              dashLength: 10,
                              dashColor: isCheked ? Colors.pink : Colors.grey,
                              direction: Axis.vertical,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: size.width * .03,
                          child: !isCheked
                              ? SvgPicture.asset(
                                  "assets/g3.svg",
                                  width: size.width * .08,
                                  height: size.height * .083,
                                )
                              : SvgPicture.asset(
                                  "assets/g6.svg",
                                  color: randomList[random()],
                                  width: size.width * .08,
                                  height: size.height * .083,
                                ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(
                      right: size.width * .08,
                      bottom: size.width * .008,
                    ),
                    width: size.width * .60,

                    // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: .8,
                            color:
                                isCheked ? Colors.pink : Colors.transparent)),
                    child: Container(
                      color: Colors.white.withOpacity(.2),
                      child: Stack(
                        children: [
                          Positioned(
                              top: size.height * .025,
                              left: size.width * .04,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: size.height * .05,
                                    width: size.width * .35,
                                    child: const Text(
                                        "Cutie try to sing and talk to your baby &&  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: isCheked
                                              ? Colors.teal.shade300
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isCheked = !isCheked;
                                          });
                                        },
                                        child: isCheked
                                            ? const Text("Done")
                                            : const Text("To do")),
                                  )
                                ],
                              )),
                          Positioned(
                            top: 8,
                            right: 5,
                            bottom: 8,
                            child: SizedBox(
                              width: size.width * .2,
                              height: size.width * .3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: const AssetImage("assets/mother.jpg"),
                                  width: size.width * .25,
                                  height: size.height,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    //ItemDetails(isCheked: isCheked, size: size),
                    ),
              ])),
        ),
      ],
    );
  }
}

//
//
//
//
//! --------------------------------------------------------------
class item extends StatelessWidget {
  const item({
    Key? key,
    required this.size,
    required this.isCheked,
  }) : super(key: key);

  final Size size;
  final bool isCheked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Flexible(
                flex: 1,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * .1, vertical: 0),
                        child: DottedLine(
                          dashLength: 10,
                          dashColor: isCheked ? Colors.pink : Colors.grey,
                          direction: Axis.vertical,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      child: SvgPicture.asset(
                        "assets/groupe1.svg",
                        width: size.width * .08,
                        height: size.height * .083,
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(
                  right: size.width * .08,
                  bottom: size.width * .008,
                ),
                width: size.width * .60,

                // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: .8,
                        color: isCheked ? Colors.pink : Colors.transparent)),
                child: Container(
                  color: Colors.white.withOpacity(.2),
                  child: Stack(
                    children: [
                      Positioned(
                          top: size.height * .025,
                          left: size.width * .04,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: size.height * .05,
                                width: size.width * .35,
                                child: const Text(
                                    "Cutie try to sing and talk to your baby &&  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                margin: const EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.teal.shade300,
                                    ),
                                    onPressed: () {},
                                    child: const Text("Done")),
                              )
                            ],
                          )),
                      Positioned(
                        top: 8,
                        right: 5,
                        bottom: 8,
                        child: SizedBox(
                          width: size.width * .2,
                          height: size.width * .3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.cover,
                              image: const AssetImage("assets/mother.jpg"),
                              width: size.width * .25,
                              height: size.height,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                //ItemDetails(isCheked: isCheked, size: size),
                ),
          ])),
    );
  }
}

//
//
//
//
//

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key? key,
    required this.isCheked,
    required this.size,
  }) : super(key: key);

  final bool isCheked;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Talk an sing to your baby vc ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: isCheked
                        ? const Text("Done")
                        : const Text(
                            "To do",
                            style: TextStyle(color: Colors.grey),
                          ),
                    style: isCheked
                        ? ElevatedButton.styleFrom(
                            primary: Colors.teal[400]!.withOpacity(.6))
                        : ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: const BorderSide(
                                width: 0.5, color: Colors.grey),
                            shadowColor: Colors.transparent),
                  ),
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.cover,
              image: const AssetImage("assets/mother.jpg"),
              width: size.width * .25,
              height: size.height,
            ),
          ),
        ),
      ],
    );
  }
}





// Row(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 10),
//             color: Colors.red,
//             child: const Flexible(
//               child: DottedLine(
//                 dashColor: Colors.pink,
//                 direction: Axis.vertical,
//               ),
//               flex: 2,
//             ),
//           ),
//           Flexible(
//             flex: 4,
//             child: Container(
//               color: Colors.transparent,
//               child: Container(
//                 margin: const EdgeInsets.only(top: 5, left: 8, right: 15),
//                 child: Column(
//                  




//                     
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 3,
//             child: 
//             ),
//           ),
//         ],
//       ),