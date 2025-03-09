import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;



class GradContainer extends StatelessWidget {
  const GradContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
