import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/loginAndRegistration/loginAndRegistrationWidgets.dart';
import 'package:podberu_app/sizeConfig.dart';


class FirstLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FirstLoginAndRegistrationWidget(screenType: "login");
  }
}
