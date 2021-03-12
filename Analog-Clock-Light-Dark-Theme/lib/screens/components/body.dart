import 'package:flutter/material.dart';
import 'time_in_hour_and_minute.dart';
import 'clock.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Column(
              children: [
                Text(
                  "Raipur, India | Ist",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TimeInHourMinute()
              ],
            ),
            Spacer(),
            Clock(),
            Spacer(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
