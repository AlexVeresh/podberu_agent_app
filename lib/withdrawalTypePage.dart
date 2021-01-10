import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/Constants.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/buttonWidget.dart';
import 'package:podberu_app/widgets/cardWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/withdrawalDataPage.dart';

class WithdrawalTypePage extends StatelessWidget {
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
                    onTap: () async{
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
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.paddingHorizontal),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: CardWidget(
                        title: "Паспорт",
                        description: "Добавить",
                        iconPath: "assets/images/ic_documents.svg",
                        backgroundColor: Constants.themeColor,
                        onPressed: () async{
                          //await Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddDocumentPage(documentTag: "0")));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: CardWidget(
                        title: "СНИЛС",
                        description: "Добавить",
                        iconPath: "assets/images/ic_documents.svg",
                        backgroundColor: Constants.themeColor,
                        onPressed: () async{
                          //await Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddDocumentPage(documentTag: "1")));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24),
                      child: CardWidget(
                        title: "Свидетельство ИНН",
                        description: "Добавить",
                        iconPath: "assets/images/ic_documents.svg",
                        backgroundColor: Constants.themeColor,
                        onPressed: () async{
                          //await Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddDocumentPage(documentTag: "2")));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.padding24, bottom: SizeConfig.padding32),
                      child: ButtonWidget(
                          title: "Далее",
                          onPressed: () async{
                            await Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithdrawalDataPage()));
                          }
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
