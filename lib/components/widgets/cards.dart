import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards(
      {Key? key, required this.backgroundColor, this.cardChild, this.onTap})
      : super(key: key);
  final Color backgroundColor;
  final Widget? cardChild;
  final void Function()? onTap;
  // alternate:
  // final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: cardChild,
      ),
      onTap: onTap,
    );
  }
}
