// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  get textstyle => TextStyle(
      fontFamily: 'Schyler', fontSize: 15, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [_settingsheader(), _temGridview()],
      ),
    );
  }

  _settingsheader() {
    return Card(
      child: Container(
        width: double.infinity,
        color: Colors.grey[200],
        padding: EdgeInsets.only(top: 40, bottom: 40),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 40,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'محمد كريم',
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Schyler',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  _temGridview() {
    return Container(
      height: MediaQuery.of(context).size.width + 40,
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            // color: Colors.yellow[700],
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.verified_user_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            " حسابي  ",
                            textAlign: TextAlign.center,
                            style: textstyle,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.account_balance_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" الحساب البنكي ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.language_sharp,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" اللغه ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.private_connectivity_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" الشروط والاحكام  ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.phone_android_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" عن التطبيق  ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.local_phone_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" اتصل بنا ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.share_sharp,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(" مشاركه التطبيق ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.1,
                  child: Card(
                    color: Color.fromRGBO(251, 249, 240, 1),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 80,
                            child: Icon(
                              Icons.logout_outlined,
                              size: 40,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text("تسجيل خروج ",
                              textAlign: TextAlign.center, style: textstyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
