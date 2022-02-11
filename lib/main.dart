import 'dart:developer';

import 'package:dotbottomnavbar/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // bool selected = false;
  var keyy = GlobalKey();
  late List<GlobalKey> keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];
  var screens = [
    Home(
      title: "TimeLines",
    ),
    const Center(
      child: Text("Screen2"),
    ),
    const Center(
      child: Text("Screen3"),
    ),
    const Center(
      child: Text("Screen4"),
    ),
    const Center(
      child: Text("Screen5"),
    )
  ];
  var _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mapped2 = {
      0: -1,
      4: 1,
      1: -0.5,
      2: 0,
      3: 0.5,
    };

    // var mapped = {
    //   0: -MediaQuery.of(context).size.width / 2 + 55,
    //   4: MediaQuery.of(context).size.width / 2 - 53,
    //   1: -MediaQuery.of(context).size.width / 2 + 154,
    //   2: 0,
    //   3: MediaQuery.of(context).size.width * .199,
    // };

    //print(-MediaQuery.of(context).size.width * 0.1 / 50);
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 1, color: Colors.black))),
          height: MediaQuery.of(context).size.height * .08,
          // padding:
          //     EdgeInsets.only(top: MediaQuery.of(context).size.height * .020),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: listIcon.map((element) {
                  // for (var i = 0; i < listIcon.length; i++) {
                  //   keys[i] = GlobalKey();
                  //   print("  kes");
                  // }
                  return GestureDetector(
                    onTap: () {
                      //  _getWidgetInfo();
                      setState(() {
                        _counter = listIcon.indexOf(element);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .020),
                      child: Icon(
                        element,
                        key: keys[listIcon.indexOf(element)],
                        size: 20,
                        color: _counter == listIcon.indexOf(element)
                            ? Colors.pink
                            : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 5,
              ),
              // Transform.translate(
              //   offset: Offset(MediaQuery.of(context).size.width * .199, 0),
              //   child: Container(
              //     // margin: const EdgeInsets.only(
              //     //   left: 52,
              //     //   right: 52,
              //     // ),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.pinkAccent,
              //     ),
              //     width: 3,
              //     height: 3,
              //   ),
              // ),

              AnimatedAlign(
                alignment: Alignment(mapped2[_counter]!.toDouble(), 0),
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeInOutCubicEmphasized,
                child: Container(
                  key: keyy,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .0949,
                    right: MediaQuery.of(context).size.width * .097,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pinkAccent,
                  ),
                  width: 4,
                  height: 4,
                ),
              ),
            ],
          ),
        ),
        body: screens[_counter]
        // Stack(
        //   children: [
        //     Positioned(
        //       top: 300,
        //       left: 200,
        //       child: Container(
        //         margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        //         child: ElevatedButton(
        //           onPressed: () => setState(() {
        //             _counter == 4 ? _counter = 0 : _counter += 1;
        //           }),
        //           child: const Text('click me '),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // bottomNavigationBar: Boott,
        );
  }

  void _getWidgetInfo() {
    final RenderBox renderBox2 =
        keyy.currentContext?.findRenderObject() as RenderBox;

    /// final RenderBox renderBox =
    //    keys[_counter].currentContext?.findRenderObject() as RenderBox;

    // final Size size = renderBox.size; // or _widgetKey.currentContext?.size
    // print('Size: ${size.width}, ${size.height}');

    //final Offset offset = renderBox.localToGlobal(Offset.zero);
    // print('Offset: ${offset.dx}, ${offset.dy}');
    // print(
    //
    //   'Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
    Offset s = renderBox2.localToGlobal(Offset.zero);
    Size sizedot = renderBox2.size;
    //this is global position
    double y = s.dy;
    double x = s.dx;
    print("the height : " + sizedot.height.toString());
    print("the width : " + sizedot.width.toString());
    print('Position2: ${y}, ${x}');
  }

  List<IconData> listIcon = const [
    Icons.home,
    Icons.book,
    Icons.chat,
    Icons.light,
    Icons.person,
  ];
}

// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:dotbottomnavbar/dor.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Dot(),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var _selectedTab = _SelectedTab.home;

//   void _handleIndexChanged(int i) {
//     setState(() {
//       _selectedTab = _SelectedTab.values[i];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 10),
//         child: DotNavigationBar(
//           margin: const EdgeInsets.only(left: 10, right: 10),
//           currentIndex: _SelectedTab.values.indexOf(_selectedTab),
//           dotIndicatorColor: Colors.pink,
//           selectedItemColor: Colors.pink,

//           unselectedItemColor: Colors.grey[300],
//           // enableFloatingNavBar: false,
//           onTap: _handleIndexChanged,
//           items: [
//             /// Home
//             DotNavigationBarItem(
//               selectedColor: Colors.amber,
//               icon: const Icon(Icons.home),
//             ),

//             /// Likes
//             DotNavigationBarItem(
//               selectedColor: Colors.amber,
//               icon: const Icon(Icons.favorite),
//             ),

//             /// Search
//             DotNavigationBarItem(
//               selectedColor: Colors.amber,
//               icon: const Icon(Icons.search),
//             ),

//             /// Profile
//             DotNavigationBarItem(
//               selectedColor: Colors.amber,
//               icon: const Icon(Icons.person),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// enum _SelectedTab { home, favorite, search, person }

// // import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: Home(),
// //     );
// //   }
// // }

// // class Home extends StatefulWidget {
// //   @override
// //   _HomeState createState() => _HomeState();
// // }

// // class _HomeState extends State<Home> {
// //   var currentIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomNavigationBar: Container(
// //           margin: const EdgeInsets.all(28),
// //           height: MediaQuery.of(context).size.height * .155,
// //           decoration: BoxDecoration(
// //               color: Colors.white,
// //               boxShadow: [
// //                 BoxShadow(
// //                     color: Colors.black.withOpacity(.15),
// //                     blurRadius: 30,
// //                     offset: const Offset(0, 10)),
// //               ],
// //               borderRadius: BorderRadius.circular(50)),
// //           child: ListView.builder(
// //               itemCount: 4,
// //               scrollDirection: Axis.horizontal,
// //               // padding: EdgeInsets.symmetric(
// //               //     horizontal: MediaQuery.of(context).size.width * .24),
// //               itemBuilder: (context, index) => InkWell(
// //                     onTap: () {
// //                       setState(() {
// //                         currentIndex = index;
// //                       });
// //                     },
// //                     splashColor: Colors.transparent,
// //                     highlightColor: Colors.transparent,
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.symmetric(horizontal: 50),
// //                           child: Icon(
// //                             listOfIcons[index],
// //                             size: MediaQuery.of(context).size.width * .1,
// //                             color: index == currentIndex
// //                                 ? Colors.pink
// //                                 : Colors.black38,
// //                           ),
// //                         ),
// //                         AnimatedContainer(
// //                           // transform,
// //                           decoration: const BoxDecoration(
// //                               color: Colors.pink,
// //                               borderRadius: BorderRadius.vertical(
// //                                 top: Radius.circular(10),
// //                                 bottom: Radius.circular(10),
// //                               )),
// //                           duration: const Duration(microseconds: 1500),
// //                           curve: Curves.easeIn,
// //                           height: index == currentIndex
// //                               ? MediaQuery.of(context).size.width * .014
// //                               : 0,
// //                           margin: EdgeInsets.only(
// //                               bottom: index == currentIndex
// //                                   ? MediaQuery.of(context).size.width * .014
// //                                   : 0,
// //                               right: MediaQuery.of(context).size.width * .042,
// //                               left: MediaQuery.of(context).size.width * .042),
// //                           width: 10,
// //                         ),
// //                       ],
// //                     ),
// //                   ))),
// //     );
// //   }

// //   List<IconData> listOfIcons = [
// //     Icons.home,
// //     Icons.favorite,
// //     Icons.settings,
// //     Icons.person
// //   ];
// // }
