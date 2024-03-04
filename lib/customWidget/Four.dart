

import 'custom_circle.dart';
import 'custom_star.dart';
import 'package:flutter/material.dart';
class FourContainer extends StatelessWidget {
  int index;
   FourContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return   SizedBox(
      height:(height - ( height*.10)) ,
      width: width,
      child: Stack(
        children: [Column(
          children: [
            Expanded(
              child: Container(
                height: (height - ( height*.05)) ,
                color: Colors.red,

                child: StarCustom(index: index+1),
              ),
            ),
            Expanded(
                child: SizedBox(
                  height: (height - ( height*.10)) *.50,

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
                          Expanded(
                            child: Container(
                              height: (height - ( height*.10)) *.250,
                              color: Colors.orange,

                              child: StarCustom(index: index+4),
                            ),
                          ),

                        ]),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),const Center(child: CircleCustom()),],
      ),
    );
  }
}
