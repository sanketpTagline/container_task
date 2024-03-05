import 'package:flutter/material.dart';
import 'package:sanket/customWidget/custom_circle.dart';
import 'package:sanket/customWidget/custom_star.dart';
import 'package:sanket/customWidget/one.dart';
import 'package:sanket/customWidget/two.dart';

class ThreeContainer extends StatelessWidget {
 final int index;
  const  ThreeContainer({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height:(height - ( height*.10)) ,
      width: width,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(

                child: Container(
                  height: (height - ( height*.10)) ,
                  color: Colors.red,

                  child:   StarCustom(index: index+1),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: (height - ( height*.10)) *.50,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: (height - ( height*.10)) *.50,
                          width: width*.5,
                          color: Colors.blue,
                          child: StarCustom(index: index+2),
                        ),
                      ),
                      SizedBox(
                        height: (height - ( height*.10)) *.50,
                        width: width*.5,

                        child: Column(children: [
                          Expanded(
                            child: Container(
                              height: (height - ( height*.10)) *.250,
                              color: Colors.green,

                              child: StarCustom(index: index+3),
                            ),
                          ),


                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Center(child: CircleCustom()),
        ],
      ),
    );


  }
}
