import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/Constants.dart';
import 'package:podberu_app/Entities.dart';
import 'package:podberu_app/profilePage.dart';
import 'package:podberu_app/requestCreationPage.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/cardWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';

class ServiceDetailsPage extends StatelessWidget {
  String serviceTitle;
  List<ServiceEntity> services = List();
  ServiceDetailsPage({this.serviceTitle, this.services});

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
                      await Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                    child: ProfileBar()
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24),
                child: Text(
                  serviceTitle,
                  style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize24, fontWeight: FontWeight.w500, letterSpacing: 0.38),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.paddingHorizontal),
                child: Column(
                  children: services.map((item) =>  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.padding24),
                    child: CardWidget(
                      title: item.title,
                      description: item.description,
                      iconPath: item.iconPath,
                      backgroundColor: Constants.themeColor,
                      onPressed: () async{
                        await Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestCreationPage()));
                      },
                    ),
                  )).toList()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
