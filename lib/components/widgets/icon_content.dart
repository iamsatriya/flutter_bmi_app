import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constant/text_style.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key, required this.iconData, required this.title,
  }) : super(key: key);
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 75.0,
        ),
        const SizedBox(height: 15.0),
        Text(title.toUpperCase(), style: kPrimaryText,),
      ],
    );
  }
}
