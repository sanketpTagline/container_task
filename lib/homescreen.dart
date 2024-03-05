

import 'package:flutter/material.dart';
import 'package:sanket/calculation.dart';
import 'package:sanket/customWidget/Four.dart';
import 'package:sanket/customWidget/Three.dart';
import 'package:sanket/customWidget/one.dart';
import 'package:sanket/customWidget/two.dart';

class HomeScreen extends StatefulWidget {
final int length;
  const HomeScreen( {super.key, required this.length,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(children: [
        SizedBox(
          height: height * .10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 100,
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
        Container(
          height: height - (height * .10),
          width: width,
          color: Colors.purple,
          child: SingleChildScrollView(
            child: Column(

              children: [
                ListView.builder(
                  physics:const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: (widget.length~/4),
                  itemBuilder: (context, index) {

                return FourContainer(index: (4*index));
                },),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics:const NeverScrollableScrollPhysics(),

                shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return widget.length%4 ==1?OneContainer(index:(widget.length~/4)*4+index ):
                        widget.length%4 ==2 ?TwoContainer(index: (widget.length~/4)*4+index):
                        widget.length%4 ==3 ?ThreeContainer(index: (widget.length~/4)*4+index):const SizedBox();

                },),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}






/*
child: SingleChildScrollView(
              child: Column(
                          children: [
              // ContainerCal(leng: widget.length),
                          ],
                        )),
 */