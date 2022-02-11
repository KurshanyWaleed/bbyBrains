import 'package:babybrains/timemine_item.dart';

//import 'package:dotbottomnavbar/timemine_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String title;
  Home({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(color: Colors.grey.withOpacity(.1)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TimeLineItem(),
              TimeLineItem(),
              TimeLineItem(),
              TimeLineItem(),
            ],
          ),
        )

        //   TimelineTile(
        //     beforeLineStyle: const LineStyle(
        //       color: Colors.pink,
        //     ),
        //     afterLineStyle: const LineStyle(color: Colors.pink, thickness: 0),
        //     indicatorStyle: IndicatorStyle(
        //       width: 30,
        //       height: 30,
        //       indicator: Container(
        //         decoration: BoxDecoration(
        //             color: Colors.grey.withOpacity(.1),
        //             borderRadius: BorderRadius.circular(50),
        //             border: Border.all(width: 1, color: Colors.pink)),
        //       ),
        //     ),
        //     isFirst: true,
        //   ),
        // ],
        );

    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: const [TlItem(), TlItem(), TlItem(), TlItem()],
  }
}
