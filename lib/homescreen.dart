import 'package:flutter/material.dart';
import 'package:sanket/customWidget/Four.dart';
import 'package:sanket/customWidget/Three.dart';
import 'package:sanket/customWidget/one.dart';
import 'package:sanket/customWidget/two.dart';

import 'customWidget/custom_circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int countContainer = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // print("$height  ${height * .10}");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countContainer++;
          });
        },
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: height * .10,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                    child: Center(child: Text("$index")),
                  );
                },
              ),
            ),
            SizedBox(
              height: (height - (height * .10)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  countContainer % 4 == 1
                      ? const OneContainer()
                      : countContainer % 4 == 2
                          ? const TwoContainer()
                          : countContainer % 4 == 3
                              ? const ThreeContainer()
                              : countContainer % 4 == 0
                                  ? const FourContainer()
                                  : const SizedBox(),
                  // OneContainer(),
                  const Center(child: CircleCustom()),
                ],
              ),
            ),
            SizedBox(
              height: (height - (height * .10)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  countContainer % 4 == 1
                      ? const OneContainer()
                      : countContainer % 4 == 2
                          ? const TwoContainer()
                          : countContainer % 4 == 3
                              ? const ThreeContainer()
                              : countContainer % 4 == 0
                                  ? const FourContainer()
                                  : const SizedBox(),
                  // OneContainer(),
                  const Center(child: CircleCustom()),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// showContainer(int value) {
//   switch (value%4) {
//     case 1:
//       return  OneContainer();
//       break;
//     case 2:
//       const OneContainer();
//       const TwoContainer();
//       break;
//     case 3:
//       const OneContainer();
//       const ThreeContainer();
//       break;
//     case 0:
//       const OneContainer();
//       const FourContainer();
//       break;
//     default:
//       print(' invalid entry');
//   }
// }

// one(),
// Expanded(
//   child: Container(
//     height: (height - ( height*.10)) *.50,
//     color: Colors.red,
//     child: const StarCustom(),
//   ),
// ),
// Expanded(
//   child: SizedBox(
//     height: (height - ( height*.10)) *.50,
//     // color: Colors.red,
//     child: Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: (height - ( height*.10)) *.50,
//             width: width*.5,
//             color: Colors.blue,
//             child: const StarCustom(),
//           ),
//         ),
//         SizedBox(
//           height: (height - ( height*.10)) *.50,
//           width: width*.5,
//
//           child: Column(children: [
//             Expanded(
//               child: Container(
//                 height: (height - ( height*.10)) *.250,
//                 color: Colors.green,
//
//                 child: const StarCustom(),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 height: (height - ( height*.10)) *.250,
//                 color: Colors.orange,
//
//                 child: const StarCustom(),
//               ),
//             ),
//
//           ]),
//         ),
//       ],
//     ),
//   ),
// ),
