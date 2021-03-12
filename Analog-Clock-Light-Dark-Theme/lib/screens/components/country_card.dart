import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../size_config.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.country,
    @required this.period,
    @required this.iconSrc,
    @required this.time,
    @required this.timeZone,
  }) : super(key: key);

  final String country, timeZone, iconSrc, time, period;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(150),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Theme.of(context).primaryIconTheme.color),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                ),
                SizedBox(height: 5),
                Text(timeZone),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(25),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
