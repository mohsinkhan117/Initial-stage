import 'package:flutter/material.dart';
import 'package:project/screens/homePage.dart';
import 'package:project/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showText = false;
  TextEditingController retypePass = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 109, 104, 158),
          title: Text('SignUP'),
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
                          borderSide:
                              BorderSide(color: Colors.red, width: 100.0),
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
                            });
                          },
                          icon: showText
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9.0))),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: retypePass,
                    obscureText: !showText,
                    strutStyle: StrutStyle(height: 0.5),
                    decoration: InputDecoration(
                      label: Text('Retype Password'),
                      prefix: Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10),
                        child: Icon(Icons.key_off_outlined),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showText = !showText;
                            });
                          },
                          icon: showText
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
                        side: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 109, 104, 158)),
                        minimumSize: Size(200, 50),
                        iconColor: Colors.amber),
                    onPressed: () {
                      if (pass.text != '' && pass.text == retypePass.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homepage(),
                            ));
                      } else if (pass != retypePass &&
                          pass.text.isNotEmpty &&
                          retypePass.text.isNotEmpty &&
                          email.text.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content:
                                  Text('Email or Password matching is wrong'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                )
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Error!'),
                                content:
                                    Text('Email and Password must be provided'),
                              );
                            });
                      }

                      //   print(
                      //       '🚀 User Email is ${email.text} and Password is ${pass.text}');
                    },
                    child: Text(
                      'Sign_Up',
                      style:
                          TextStyle(color: Color.fromARGB(255, 109, 104, 158)),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Alredy have an Account'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Text('Login'))
                ],
              )
            ],
          ),
        ));
  }
}
