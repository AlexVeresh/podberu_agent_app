import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/buttonWidget.dart';
import 'package:podberu_app/widgets/cardWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/withdrawalPage.dart';

import 'Constants.dart';

class WithdrawalHistoryPage extends StatelessWidget {
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
                    onTap: (){
                      //await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: ProfileBar()
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.padding84, right: SizeConfig.padding84, top: SizeConfig.padding24),
                child: Text(
                  "Вывод средств",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: SizeConfig.textSize24, letterSpacing: 0.38, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.padding84, right: SizeConfig.padding84, top: SizeConfig.padding24),
                child: Text(
                  "Ваш баланс: 78 475  ₽",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: SizeConfig.textSize17, letterSpacing: -0.24, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal, top: SizeConfig.padding24),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: CardWidget(
                        title: "Вывод: 78 475 ₽",
                        description: "24.12.2020",
                        iconPath: "assets/images/ic_money.svg",
                        backgroundColor: Constants.themeColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.padding24),
                child: ButtonWidget(
                    title: "Вывести средства",
                    onPressed: () async{
                      await Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithdrawalPage()));
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
