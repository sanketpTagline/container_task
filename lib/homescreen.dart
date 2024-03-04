import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sanket/customWidget/Four.dart';
import 'package:sanket/customWidget/Three.dart';

import 'package:sanket/customWidget/one.dart';
import 'package:sanket/customWidget/two.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int m = 2;
  int toc =4;
  int countContainer = 4;
  List<Widget> widgets = [const OneContainer()];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countContainer++;
            print("$countContainer");
            print("countContainer ${countContainer ~/ 4}");
          });
        },
      ),
      body: Column(children: [

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
        // Container(
        //   height: (height - (height * .10)),
        //   width: width,
        //   color: Colors.red,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //
        //         SizedBox(
        //           height: (height - (height * .10)),
        //           child: Stack(
        //             alignment: Alignment.center,
        //             children: [
        //               countContainer % 4 == 1
        //                   ? const OneContainer()
        //                   : countContainer % 4 == 2
        //                   ? const TwoContainer()
        //                   : countContainer % 4 == 3
        //                   ? const ThreeContainer()
        //                   : countContainer % 4 == 0
        //                   ? const FourContainer()
        //                   : const SizedBox(),
        //
        //               const Center(child: CircleCustom()),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: (height - (height * .10)),
        //           child: Stack(
        //             alignment: Alignment.center,
        //             children: [
        //               countContainer % 4 == 1
        //                   ? const OneContainer()
        //                   : countContainer % 4 == 2
        //                   ? const TwoContainer()
        //                   : countContainer % 4 == 3
        //                   ? const ThreeContainer()
        //                   : countContainer % 4 == 0
        //                   ? const FourContainer()
        //                   : const SizedBox(),
        //               // OneContainer(),
        //               const Center(child: CircleCustom()),
        //             ],
        //           ),
        //         ),
        //
        //       ],
        //     ),
        //   ),
        // ),
        Container(
          height: height - (height * .10),
          width: width,
          color: Colors.purple,
          child: SingleChildScrollView(
            child: Column(

              children: [
                showAllContainer(4),

 //                for(int i =0;i<3;i++)
 //                  const FourContainer(),
 // OneContainer()

              ],
            )
            // Column(
            //   children: [
            //      // showAllContainer(countContainer),
            //
            //
            //
            //     // Flexible(
            //     //   // height: height - (height * .10),
            //     //   child: ListView.builder(
            //     //     padding:const EdgeInsets.all(0),
            //     //     shrinkWrap: true,
            //     //     itemCount: countContainer ~/ 4,
            //     //     itemBuilder: (context, index) {
            //     //
            //     //
            //     //     //   for(int i =1;i<(countContainer~/4);i++)
            //     //     //     {
            //     //     //       print(" i ==> $i");
            //     //     //       return const FourContainer();
            //     //     //     }
            //     //     // return   showContainer(countContainer);
            //     //      // return  Container(
            //     //      //   height: 100,
            //     //      //   width: 100,
            //     //      //   color: Colors.yellow,
            //     //      //   margin: const EdgeInsets.all(10),
            //     //      //   child: Text("$height $width"),
            //     //      // );
            //     //      // return const FourContainer();
            //     //        // countContainer % 4 == 1
            //     //        //                  ?  Text("${countContainer ~/4} $index")
            //     //        //                  : index % 4 == 2
            //     //        //                  ?   Text("${countContainer ~/4} $index")
            //     //        //                  : index % 4 == 3
            //     //        //                  ?   Text("${countContainer ~/4} $index")
            //     //        //                  : index % 4 == 0
            //     //        //                  ?   Text("${countContainer ~/4} $index")
            //     //        //                  : const SizedBox();
            //     //
            //     //     },
            //     //   ),
            //     // ),
            //   ],
            // ),
          ),
        ),
        // Expanded(
        //   child: Container(
        //     height: height - (height * .10),
        //     width: width,
        //     color: Colors.purple,
        //     child: ListView.builder(
        //       shrinkWrap: true,
        //       itemCount: countContainer%4,
        //       itemBuilder: (context, index) {
        //       return index % 4 == 1
        //                                 ? const OneContainer()
        //                                 : index % 4 == 2
        //                                 ? const TwoContainer()
        //                                 : index % 4 == 3
        //                                 ? const ThreeContainer()
        //                                 : index % 4 == 0
        //                                 ? const FourContainer()
        //                                 : const SizedBox();
        //     },),
        //     // child: SingleChildScrollView(
        //     //   child: Column(
        //     //     mainAxisSize: MainAxisSize.min,
        //     //
        //     //
        //     //     children: List.generate(countContainer%4, (index) {
        //     //        return index % 4 == 1
        //     //                         ? const OneContainer()
        //     //                         : index % 4 == 2
        //     //                         ? const TwoContainer()
        //     //                         : index % 4 == 3
        //     //                         ? const ThreeContainer()
        //     //                         : index % 4 == 0
        //     //                         ? const FourContainer()
        //     //                         : const SizedBox();
        //     //     }),
        //     //   ),
        //     // ),
        //   ),
        // )
      ]),
    );
  }
}

 showAllContainer(int value)
{
  int noContainer = 3;
  int modulo =1;

  if(modulo == 1 )
    {
      for(int i =0;i<noContainer;i++) FourContainer();
      OneContainer();
    }

  //
  // if(modulo == 1)
  //   {
  //     List.generate( 2, (index) {
  //       return Text("index =>$index");
  //     });
  //  //    for(int i =0; i< noContainer;i++)
  //  //      {
  //  // const FourContainer();
  //  //      }
  //
  //     return const Text("1111");
  //   }
  // return SizedBox();


  // if(modulo == 2)
  // {
  //   for(int i =0; i< noContainer;i++)
  //   {
  //     const FourContainer();
  //   }
  //   const TwoContainer();
  // }
  // if(modulo == 3)
  // {
  //   for(int i =0; i< noContainer;i++)
  //   {
  //     const FourContainer();
  //   }
  //   const ThreeContainer();
  // }
  // if(modulo == 1)
  // {
  //   for(int i =0; i< noContainer;i++)
  //   {
  //     const FourContainer();
  //   }
  //
  // }
}




showContainer(int value) {
  switch (value%4) {
    case 1:
      return  const OneContainer();
    case 2:

      return const TwoContainer();

    case 3:

      return const TwoContainer();

    case 0:

      return const TwoContainer();

    default:
      print(' invalid entry');
  }
}
// SizedBox(
//   height: (height - (height * .10)),
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       countContainer % 4 == 1
//           ? const OneContainer()
//           : countContainer % 4 == 2
//           ? const TwoContainer()
//           : countContainer % 4 == 3
//           ? const ThreeContainer()
//           : countContainer % 4 == 0
//           ? const FourContainer()
//           : const SizedBox(),
//       // OneContainer(),
//       const Center(child: CircleCustom()),
//     ],
//   ),
// ),
// SizedBox(
//   height: (height - (height * .10)),
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       countContainer % 4 == 1
//           ? const OneContainer()
//           : countContainer % 4 == 2
//           ? const TwoContainer()
//           : countContainer % 4 == 3
//           ? const ThreeContainer()
//           : countContainer % 4 == 0
//           ? const FourContainer()
//           : const SizedBox(),
//       // OneContainer(),
//       const Center(child: CircleCustom()),
//     ],
//   ),
// ),

//
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

