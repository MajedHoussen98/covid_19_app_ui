import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PreventionCard extends StatelessWidget {
  final String title;
  final String svgSrc;

  const PreventionCard({
    Key key, this.title, this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}