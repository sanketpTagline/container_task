import 'package:flutter/material.dart';
import 'package:sanket/customWidget/custom_star.dart';
import 'package:sanket/customWidget/one.dart';

class TwoContainer extends StatelessWidget {
  const TwoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height:(height - ( height*.10)) ,
      width: width,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: (height - (height * .10)) * .50,
              color: Colors.red,
              child: const StarCustom(),
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
                      child: const StarCustom(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
