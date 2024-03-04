import 'package:flutter/material.dart';

import 'custom_circle.dart';
import 'custom_star.dart';

class OneContainer extends StatelessWidget {
int index;
 OneContainer({super.key,required this.index});

  @override
  Widget build(BuildContext context) {

    return Container(
      height:(MediaQuery.of(context).size.height) * .90,
      width: MediaQuery.of(context).size.width,
      color:  Colors.red,
      child:  Stack(children: [StarCustom(index: index+1),const Center(child: CircleCustom()),]),
    );
  }

}


