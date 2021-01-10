import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberu_app/Entities.dart';
import 'package:podberu_app/profilePage.dart';
import 'package:podberu_app/serviceDetailsPage.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/cardWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';

import 'Constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding8),
                child: SvgPicture.asset("assets/images/ic_logo.svg"),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24),
                child: InkWell(
                    onTap: ()async{
                      await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: ProfileBar()
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.padding84, right: SizeConfig.padding84, top: SizeConfig.padding24),
                child: Text(
                  "Добрый день, Максим Юрьевич!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: SizeConfig.textSize24, letterSpacing: 0.38, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.padding84, right: SizeConfig.padding84, top: SizeConfig.padding24),
                child: Text(
                  "Выберите продукт, чтобы предложить клиенту",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: SizeConfig.textSize17, letterSpacing: -0.24, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal, top: SizeConfig.padding24),
                child: Column(
                  children: [
                    CardWidget(
                      title: "Дебетовые карты",
                      description: "Описание",
                      iconPath: "assets/images/ic_cards.svg",
                      backgroundColor: Color.fromRGBO(127, 75, 249, 1),
                      onPressed: () async{
                        await Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                ServiceDetailsPage(
                                  serviceTitle: "Дебетовые карты",
                                  services: [
                                    new ServiceEntity(title: "Альфа-банк", iconPath: "assets/images/ic_cards.svg", description: "До 100 % комиссии"),
                                    new ServiceEntity(title: "Альфа-банк", iconPath: "assets/images/ic_cards.svg", description: "До 100 % комиссии"),
                                    new ServiceEntity(title: "Альфа-банк", iconPath: "assets/images/ic_cards.svg", description: "До 100 % комиссии")
                                  ],
                                )
                        )
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
