import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_app/screens/home_screen/page/android_setting.dart';
import 'package:setting_ui_app/utils/globals.dart';

class IOSSetting extends StatefulWidget {
  const IOSSetting({Key? key}) : super(key: key);

  @override
  _IOSSettingState createState() => _IOSSettingState();
}

class _IOSSettingState extends State<IOSSetting> {
  bool switch1 = true;
  bool switch2 = false;
  bool switch3 = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Settigs UI",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: CupertinoSwitch(
            value: Global.isIOS,
            onChanged: (val) {
              setState(() {
                Global.isIOS = val;
              });
            }),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Column",
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CupertinoFormSection(
                children: [
                  CupertinoListTile(
                    onTap: () {},
                    title: Text(
                      "Language",
                      style: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(0.8),
                        decoration: TextDecoration.none,
                        fontSize: 18,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.globe,
                      color: CupertinoColors.inactiveGray,
                      size: 28,
                    ),
                    trailing: SizedBox(
                      width: 87,
                      child: Row(
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                                color: CupertinoColors.inactiveGray,
                                decoration: TextDecoration.none,
                                fontSize: 15),
                          ),
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.inactiveGray,
                          )
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    onTap: () {},
                    title: Text(
                      "Environment",
                      style: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(0.8),
                        decoration: TextDecoration.none,
                        fontSize: 18,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.cloud,
                      color: CupertinoColors.inactiveGray,
                      size: 28,
                    ),
                    trailing: SizedBox(
                      width: 105,
                      child: Row(
                        children: [
                          Text(
                            "Prodution",
                            style: TextStyle(
                                color: CupertinoColors.inactiveGray,
                                decoration: TextDecoration.none,
                                fontSize: 15),
                          ),
                          Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.inactiveGray,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Account",
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CupertinoFormSection(
                children: [
                  MyListTiles(
                    title: "Phone Number",
                    icon: CupertinoIcons.phone_solid,
                  ),
                  MyListTiles(
                    title: "Email",
                    icon: CupertinoIcons.mail_solid,
                  ),
                  MyListTiles(
                    title: "Sign out",
                    icon: CupertinoIcons.square_arrow_right,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Security",
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CupertinoFormSection(
                children: [
                  SecurityListTile(
                    title: "Lock app in background",
                    icon: CupertinoIcons.lock,
                    trailing: CupertinoSwitch(
                      onChanged: (val) {
                        setState(() {
                          switch1 = val;
                        });
                      },
                      value: switch1,
                      activeColor: CupertinoColors.destructiveRed,
                    ),
                  ),
                  SecurityListTile(
                    title: "Use fingerprint",
                    icon: Icons.fingerprint,
                    trailing: CupertinoSwitch(
                      onChanged: (val) {
                        setState(() {
                          switch2 = val;
                        });
                      },
                      value: switch2,
                      activeColor: CupertinoColors.destructiveRed,
                    ),
                  ),
                  SecurityListTile(
                    title: "Change password",
                    icon: CupertinoIcons.compass,
                    trailing: CupertinoSwitch(
                        onChanged: (val) {
                          setState(() {
                            switch3 = val;
                          });
                        },
                        value: switch3,
                        activeColor: CupertinoColors.destructiveRed),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Mics",
                  style: TextStyle(
                    color: CupertinoColors.inactiveGray,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CupertinoFormSection(
                children: [
                  MyListTiles(
                    title: "Terms of Service",
                    icon: CupertinoIcons.doc_chart_fill
                    ,
                  ),
                  MyListTiles(
                    title: "Open source licenses",
                    icon: CupertinoIcons.doc_on_clipboard,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


