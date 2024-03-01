import 'package:flutter/material.dart';

import 'custom_star.dart';

class OneContainer extends StatelessWidget {
const OneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
            height: (height - ( height*.10)) ,
            color: Colors.red,


            child: const StarCustom(),
          ),
        ),
      ],
    );
  }

}
/*
 ConstrainedBox ← Container ← Expanded ← _SingleChildViewport ← IgnorePointer-[GlobalKey#ce8f9] ← Semantics ← Listener ← _GestureSemantics ← RawGestureDetector-[LabeledGlobalKey<RawGestureDetectorState>#2b9ef] ← Listener ← ⋯
 */