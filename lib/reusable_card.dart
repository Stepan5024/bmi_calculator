import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function()? onPress;
  final int numFlex;
  const ReusableCard(
      {super.key,
      required this.colour,
      required this.cardChild,
      this.onPress,
      required this.numFlex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: numFlex,
        child: Center(
          child: GestureDetector(
            onTap: onPress,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: colour,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: cardChild,
            ),
          ),
        ),
      ),
    );
  }
}
