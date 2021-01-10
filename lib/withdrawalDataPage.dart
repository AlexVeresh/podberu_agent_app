import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/Constants.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/buttonWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/widgets/textFieldWidget.dart';

class WithdrawalDataPage extends StatelessWidget {
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
                  "Вывод средств",
                  style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize24, fontWeight: FontWeight.w500, letterSpacing: 0.38),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24),
                child: Text(
                  "На расчётный счёт",
                  style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize17, fontWeight: FontWeight.w400, letterSpacing: -0.24),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.paddingHorizontal, vertical: SizeConfig.padding24),
                child: Column(
                  children: [
                    TextFieldWidget(hintText: "БИК (формат: 123456789)"),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: TextFieldWidget(hintText: "Банк получателя"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: TextFieldWidget(hintText: "Корреспондентский счёт"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: TextFieldWidget(hintText: "Расчётный счёт"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: TextFieldWidget(hintText: "Номер карты"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: TextFieldWidget(hintText: "Получатель"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal, bottom: SizeConfig.padding24),
                child: ButtonWidget(
                  title: "Вывести средства",
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
