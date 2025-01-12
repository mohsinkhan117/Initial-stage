import 'package:flutter/material.dart';
import 'package:project/screens/homePage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myform()));
}

class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  bool showText = false;
  var changeIcon = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  void eye() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                strutStyle: StrutStyle(height: 0.5),
                obscuringCharacter: '*',
                controller: email,
                cursorHeight: 20,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 100.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    suffix: IconButton(
                        onPressed: () {
                          print('${email.text} this is your Email');
                        },
                        icon: Icon(Icons.email)),
                    label: Text('Email')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: pass,
                  obscureText: !showText,
                  strutStyle: StrutStyle(height: 0.5),
                  decoration: InputDecoration(
                    label: Text('Password'),
                    prefix: Padding(
                      padding: const EdgeInsets.only(top: 5, right: 10),
                      child: Icon(Icons.key_off_outlined),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showText = !showText;
                            changeIcon = !changeIcon;
                          });
                        },
                        icon: changeIcon
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.amber),
                      minimumSize: Size(200, 50),
                      iconColor: Colors.amber),
                  onPressed: () {
                    print(
                        '🚀   User Email is ${email.text} and Password is ${pass.text}');
                  },
                  child: Text(
                    'SignIn',
                    style: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
