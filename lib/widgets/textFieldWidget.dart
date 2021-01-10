import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/sizeConfig.dart';

import '../Constants.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;
  TextFieldWidget({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize15, fontWeight: FontWeight.w600, letterSpacing: -0.24),
        decoration: InputDecoration(
          enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.themeColor), borderRadius: BorderRadius.all(Radius.circular(5))),
          focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Constants.themeColor), borderRadius: BorderRadius.all(Radius.circular(5))),
          hintText: hintText,
          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6), fontSize: SizeConfig.textSize15, fontWeight: FontWeight.w600, letterSpacing: -0.24),
        )
    );
  }
}
