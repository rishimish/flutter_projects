import 'package:flutter/material.dart';
import '../constants.dart';

class IconName extends StatelessWidget {
  IconName({@required this.chooseicon, @required this.text});
  final IconData chooseicon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          chooseicon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kNameTextStyle,
        )
      ],
    );
  }
}
