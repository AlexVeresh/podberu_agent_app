import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podberu_app/Constants.dart';
import 'package:podberu_app/myDocumentsPage.dart';
import 'package:podberu_app/myRequestsPage.dart';
import 'package:podberu_app/settingsPage.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/cardWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/withdrawalHistoryPage.dart';

class ProfilePage extends StatelessWidget {
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
        title: Text("Назад"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.padding16),
            child: IconButton(
                onPressed: ()async{
                   await Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                icon: Icon(Icons.settings, size: SizeConfig.iconSizeSm)
            ),
          )
        ],
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
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: CardWidget(
                        title: "Мои заявки",
                        description: "Всего 0 заявок",
                        iconPath: "assets/images/ic_request.svg",
                        backgroundColor: Constants.themeColor,
                        onPressed: () async{
                           await Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyRequestsPage()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding16),
                      child: CardWidget(
                        title: "Мои документы",
                        description: "Паспорт, СНИЛС, ИНН",
                        iconPath: "assets/images/ic_documents.svg",
                        backgroundColor: Color.fromRGBO(233, 165, 65, 1),
                        onPressed: () async{
                          await Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyDocumentsPage()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding16),
                      child: CardWidget(
                        title: "Вывод средств",
                        description: "78 475 ₽",
                        iconPath: "assets/images/ic_money.svg",
                        backgroundColor: Color.fromRGBO(233, 165, 65, 1),
                        onPressed: () async{
                          await Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithdrawalHistoryPage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
              GridView.count(
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal, top: SizeConfig.padding16, bottom: SizeConfig.padding32),
                crossAxisSpacing: SizeConfig.padding16,
                mainAxisSpacing: SizeConfig.padding16,
                shrinkWrap: true,
                primary: false,
                childAspectRatio: 1.48,// ((MediaQuery.of(context).size.width - (SizeConfig.paddingVertical*2 + SizeConfig.padding16))/2)/(MediaQuery.of(context).size.height/7.5),
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: <Widget>[
                  ShortCardWidget(
                    title: "Поддержка",
                    backgroundColor: Constants.themeColor,
                    iconPath: "assets/images/ic_help.svg",
                    onPressed: (){},
                  ),
                  ShortCardWidget(
                    title: "О нас",
                    backgroundColor: Constants.themeColor,
                    iconPath: "assets/images/ic_info.svg",
                    onPressed: (){},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
