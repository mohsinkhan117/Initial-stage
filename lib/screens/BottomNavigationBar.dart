import 'dart:math';

import 'package:flutter/material.dart';

class profileSTL extends StatelessWidget {
  const profileSTL({super.key});

  @override
  Widget build(BuildContext context) {
    return Profile();
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool buttonSwitch = true;

  int selectIndex = 0;
  void NavigationBArFunc(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  Color scaffoldColor() {
    return buttonSwitch ? Colors.white : Colors.black;
  }

  Color textColor() {
    return buttonSwitch ? Colors.black : Colors.white70;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor(),
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 109, 104, 158)),
                ),
                Center(
                    child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: CircleAvatar(
                          radius: 50,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/circle-Avatar.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mohsin Khan',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textColor()),
                  ),
                ])),
              ],
            )
          ],
        ),
        ListTile(
            enabled: false,
            leading: Text(
              'Phone:',
              style: TextStyle(color: textColor()),
            ),
            trailing: Text(
              '+923315265967',
              style: TextStyle(fontSize: 15, color: textColor()),
            )),
        ListTile(
          enabled: false,
          leading: Text(
            'Mail:',
            style: TextStyle(color: textColor()),
          ),
          trailing: Text(
            'mohsinkhanmandan@gamil.com',
            style: TextStyle(fontSize: 15, color: textColor()),
          ),
        ),
        Divider(),
        ListTile(
            onTap: () {
              setState(() {
                buttonSwitch = !buttonSwitch;
              });
            },
            leading: Transform.rotate(
                angle: 6,
                child: Icon(
                  Icons.nightlight_outlined,
                  color: textColor(),
                )),
            title: Text(
              'Dark Mode',
              style: TextStyle(
                  color: textColor(),
                  fontWeight: FontWeight.w500,
                  wordSpacing: 5.0),
            ),
            trailing: IconButton(
                color: textColor(),
                onPressed: () {
                  setState(() {
                    buttonSwitch = !buttonSwitch;
                  });
                },
                icon: buttonSwitch
                    ? Icon(Icons.toggle_off_outlined)
                    : Icon(Icons.toggle_on_outlined))),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.person_outline_outlined,
            color: textColor(),
          ),
          title: Text(
            'Profile',
            style: TextStyle(
                color: textColor(),
                fontWeight: FontWeight.w500,
                wordSpacing: 5.0),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Transform.rotate(
              angle: pi / 2,
              child: Icon(
                Icons.tune_outlined,
                color: textColor(),
              )),
          title: Text(
            'Setting',
            style: TextStyle(
                color: textColor(),
                fontWeight: FontWeight.w500,
                wordSpacing: 5.0),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.logout_outlined,
            color: textColor(),
          ),
          title: Text(
            'Log out',
            style: TextStyle(color: textColor(), fontWeight: FontWeight.w500),
          ),
        ),
        Divider(),
      ])),
    );
  }
}
