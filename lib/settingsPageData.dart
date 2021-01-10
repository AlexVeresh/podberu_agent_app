import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/Constants.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/buttonWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/widgets/textFieldWidget.dart';


class SettingsPageData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.background,
      appBar: AppBar(
          backgroundColor: Constants.background,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Назад")
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding29),
                child: InkWell(
                    onTap: ()async{
                      // await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: ProfileBar()
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24),
                child: Text(
                  "Изменение данных",
                  style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize24, fontWeight: FontWeight.w500, letterSpacing: 0.38),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal),
                child: TextFieldWidget(hintText: "ФИО"),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal),
                child: TextFieldWidget(hintText: "Телефон"),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal),
                child: TextFieldWidget(hintText: "E-mail"),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal),
                child: ButtonWidget(
                  title: "Изменить",
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
