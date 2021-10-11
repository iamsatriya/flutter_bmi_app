import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/components/widgets/cards.dart';
import 'package:flutter_bmi_app/components/widgets/icon_content.dart';
import 'package:flutter_bmi_app/constant/color.dart';
import 'package:flutter_bmi_app/constant/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Sex { male, female }

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  static String routeName = 'calculatorScreen';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Sex selectedSex = Sex.male;
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Cards(
                  backgroundColor: selectedSex == Sex.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const IconContent(
                    iconData: FontAwesomeIcons.mars,
                    title: 'male',
                  ),
                  onTap: () {
                    setState(() {
                      selectedSex = Sex.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: Cards(
                  backgroundColor: selectedSex == Sex.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const IconContent(
                    iconData: FontAwesomeIcons.venus,
                    title: 'female',
                  ),
                  onTap: () {
                    setState(() {
                      selectedSex = Sex.female;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Cards(
            backgroundColor: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'height'.toUpperCase(),
                  style: kPrimaryText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kHeightTextStyle,
                    ),
                    const Text(
                      'cm',
                      style: kPrimaryText,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 1.2,
                    activeTrackColor: kActiveSliderColor,
                    inactiveTrackColor: kInactiveSliderColor,
                    thumbColor: kBottomContainerColor,
                    overlayColor: kOverlaySliderColor,
                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 26.0),
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    min: 100,
                    max: 220,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: Cards(
                  backgroundColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: Cards(
                  backgroundColor: kActiveCardColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80.0,
          width: double.infinity,
          color: kBottomContainerColor,
          child: Center(
            child: Text(
              'calculate'.toUpperCase(),
              style: kButtonTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
