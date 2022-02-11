import 'package:flutter/material.dart';

class BottomNavBarCustom extends StatefulWidget {
  BottomNavBarCustom({Key? key}) : super(key: key);

  @override
  State<BottomNavBarCustom> createState() => _BottomNavBarCustomState();
}

class _BottomNavBarCustomState extends State<BottomNavBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
        ),
        bottomNavigationBar: Column(
          children: [
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.grey,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book, color: Colors.grey), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat, color: Colors.grey), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.light, color: Colors.grey), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.grey), label: "")
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              width: MediaQuery.of(context).size.width,
            )
          ],
        ));
  }
}




// import 'dart:developer';

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool selected = false;
//   var _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selected = !selected;
//                 });
//               },
//               child: Container(
//                 decoration: const BoxDecoration(
//                   border:
//                       Border(top: BorderSide(color: Colors.black38, width: 1)),
//                 ),
//                 margin: const EdgeInsets.only(top: 90),
//                 width: MediaQuery.of(context).size.width,
//                 height: 10.0,
//                 child: AnimatedAlign(
//                   alignment: _counter == 0
//                       ? const Alignment(-1, 0)
//                       : _counter == 1
//                           ? const Alignment(-.5, 0)
//                           : _counter == 2
//                               ? const Alignment(0, 0)
//                               : _counter == 3
//                                   ? const Alignment(0.5, 0)
//                                   : const Alignment(1, 0),
//                   duration: const Duration(milliseconds: 500),
//                   curve: Curves.easeInToLinear,
//                   child: Container(
//                     margin: const EdgeInsets.only(
//                       left: 43,
//                       right: 39,
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: Colors.pink,
//                     ),
//                     width: 5,
//                     height: 5,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 300,
//             left: 200,
//             child: Container(
//               margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
//               child: ElevatedButton(
//                 onPressed: () => setState(() {
//                   _counter == 4 ? _counter = 0 : _counter += 1;
//                 }),
//                 child: const Text('click me '),
//               ),
//             ),
//           ),
//         ],
//       ),
//       // bottomNavigationBar: Boott,
//     );
//   }
// }
