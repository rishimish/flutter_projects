import 'dart:async';

import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Raipur, India | Ist",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourMinute()
        ],
      ),
    );
  }
}

class TimeInHourMinute extends StatefulWidget {
  @override
  _TimeInHourMinuteState createState() => _TimeInHourMinuteState();
}

class _TimeInHourMinuteState extends State<TimeInHourMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hour}:${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(width: 5),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            _period,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
        ),
      ],
    );
  }
}
