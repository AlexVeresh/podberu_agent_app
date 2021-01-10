import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podberu_app/sizeConfig.dart';
import 'package:podberu_app/widgets/buttonWidget.dart';
import 'package:podberu_app/widgets/profileBar.dart';
import 'package:podberu_app/widgets/textFieldWidget.dart';
import 'package:podberu_app/withdrawalTypePage.dart';

import 'Constants.dart';
class WithdrawalPage extends StatefulWidget {
  @override
  _WithdrawalPageState createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
  int paymentType = 0;
  bool serviceValue = false;
  bool dataValue = false;
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
              Container(
                padding: EdgeInsets.only(top: SizeConfig.padding24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          paymentType = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: paymentType == 0 ? Constants.themeColor : null,
                            border: Border.all(width: 1, color: Constants.themeColor),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5))),
                        width: (MediaQuery.of(context).size.width-SizeConfig.paddingHorizontal*2) / 2,
                        height: SizeConfig.padding48,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: Text(
                              "На карту",
                              style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize15, fontWeight: FontWeight.w600, letterSpacing: -0.24),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          paymentType = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: paymentType == 1 ? Color.fromRGBO(233, 165, 65, 1) : null,
                            border: Border.all(width: 1, color: Color.fromRGBO(233, 165, 65, 1)),//: Color.fromRGBO(233, 165, 65, 1),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))),
                        width: (MediaQuery.of(context).size.width-SizeConfig.paddingHorizontal*2) / 2,
                        height: SizeConfig.padding48,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: Text(
                              "На Р. счёт",
                              style: TextStyle(color: Colors.white, fontSize: SizeConfig.textSize15, fontWeight: FontWeight.w600, letterSpacing: -0.24),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, right: SizeConfig.paddingHorizontal, left: SizeConfig.paddingHorizontal),
                child: TextFieldWidget(hintText: "Сумма"),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal, top: SizeConfig.padding24),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      highlightColor: Constants.themeColor.withOpacity(0.5),
                      onTap: (){
                        setState(() {
                          serviceValue = !serviceValue;
                        });
                      },
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width*0.067,
                            minHeight: MediaQuery.of(context).size.width*0.067
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: serviceValue ? Constants.themeColor : null,
                            border: Border.all(width: 2, color: Constants.themeColor)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.padding16, top: SizeConfig.padding6),
                      child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: "Я принимаю условия ", style: TextStyle(fontSize: 15, letterSpacing: -0.24, color: Colors.white, fontWeight: FontWeight.w600)),
                            TextSpan(text: "договора"+"\n"+" об оказании услуг", style: TextStyle(decoration: TextDecoration.underline, fontSize: 15, letterSpacing: -0.24, color: Colors.white, fontWeight: FontWeight.w600, height: 0.0))
                          ]
                      ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.paddingHorizontal, right: SizeConfig.paddingHorizontal, top: SizeConfig.padding24),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      highlightColor: Constants.themeColor.withOpacity(0.5),
                      onTap: (){
                        setState(() {
                          dataValue = !dataValue;
                        });
                      },
                      child: Container(
                        constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width*0.067,
                            minHeight: MediaQuery.of(context).size.width*0.067
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: dataValue ? Constants.themeColor : null,
                            border: Border.all(width: 2, color: Constants.themeColor)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.padding16, top: SizeConfig.padding6),
                      child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: "Я согласен ", style: TextStyle(fontSize: 15, letterSpacing: -0.24, color: Colors.white, fontWeight: FontWeight.w600)),
                            TextSpan(text: "на обработку"+"\n"+" персональных данных", style: TextStyle(decoration: TextDecoration.underline, fontSize: 15, letterSpacing: -0.24, color: Colors.white, fontWeight: FontWeight.w600, height: 0.0))
                          ]
                      ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.padding24, bottom: SizeConfig.padding32),
                child: ButtonWidget(
                    title: "Далее",
                    onPressed: () async{
                      await Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithdrawalTypePage()));
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
