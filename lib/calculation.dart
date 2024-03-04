import 'package:flutter/material.dart';
import 'package:sanket/customWidget/Four.dart';
import 'package:sanket/customWidget/Three.dart';
import 'package:sanket/customWidget/one.dart';
import 'package:sanket/customWidget/two.dart';

class Calculation extends StatelessWidget {
  int leng;
  Calculation({super.key, required this.leng});

  @override
  Widget build(BuildContext context) {
    int setContainer = (leng ~/ 4);
    int remainder = leng % 4;

    if (leng == 1) {
      return OneContainer(
        index: 0,
      );
    } else if (leng == 2) {
      return TwoContainer(
        index: 0,
      );
    } else if (leng == 3) {
      return ThreeContainer(
        index: 0,
      );
    }
    if (leng == 4) {
      return FourContainer(
        index: 0,
      );
    }

    if (remainder == 1 && leng > 4) {
      int index = (setContainer * 4);
      int j = 0;
      return Column(
        children: [
          for (int i = 0; i < setContainer; i++, j += 4)
            FourContainer(
              index: j,
            ),
          OneContainer(
            index: index,
          ),
        ],
      );
    } else if (remainder == 2 && leng > 4) {
      int index = (setContainer * 4);
      int j = 0;
      return Column(
        children: [
          for (int i = 0; i < setContainer; i++, j += 4)
            FourContainer(index: j),
          TwoContainer(index: index),
        ],
      );
    } else if (remainder == 3 && leng > 4) {
      int index = (setContainer * 4);
      int j = 0;
      return Column(
        children: [
          for (int i = 0; i < setContainer; i++, j += 4)
            FourContainer(index: j),
          ThreeContainer(index: index),
        ],
      );
    } else if (remainder == 0 && leng > 4) {
      int j = 0;
      return Column(
        children: [
          for (int i = 0; i < setContainer; i++, j += 4)
            FourContainer(index: j),
        ],
      );
    } else {
      return Container();
    }


  }
}
