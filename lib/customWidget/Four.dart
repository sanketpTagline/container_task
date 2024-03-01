import 'package:sanket/customWidget/one.dart';

import 'custom_star.dart';
import 'package:flutter/material.dart';
class FourContainer extends StatelessWidget {
  const FourContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return   Column(
      children: [
        Expanded(
          child: Container(
            height: (height - ( height*.10)) ,
            color: Colors.red,

            child: const StarCustom(),
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
                    child: const StarCustom(),
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

                        child: const StarCustom(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: (height - ( height*.10)) *.250,
                        color: Colors.orange,

                        child: const StarCustom(),
                      ),
                    ),

                  ]),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}
