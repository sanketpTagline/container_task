import 'package:flutter/material.dart';
import 'package:sanket/customWidget/custom_star.dart';

import 'custom_circle.dart';

class TwoContainer extends StatelessWidget {
  int index;
  TwoContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (height - (height * .10)),
      width: width,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: (height - (height * .10)) * .50,
                  color: Colors.red,
                  child: StarCustom(index: index + 1),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: (height - (height * .10)) * .50,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: (height - (height * .10)) * .50,
                          width: width * .5,
                          color: Colors.blue,
                          child: StarCustom(index: index + 2),
                        ),
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
