import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:university_coursefinder_app/constants.dart';
AppBar Appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menuBar.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "DESTINO",
            style: TextStyle(color: kSecondaryColor),
          ),
          TextSpan(
            text: "APP",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[IconButton(icon: SvgPicture.asset("assets/icons/searchBar.svg"),
      onPressed: () {},
    )
    ],
  );
}
