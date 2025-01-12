import 'package:flutter/material.dart';

class statelessWidgetClass extends StatefulWidget {
  const statelessWidgetClass({super.key});

  @override
  State<statelessWidgetClass> createState() => _statelessWidgetClassState();
}

class _statelessWidgetClassState extends State<statelessWidgetClass> {
  int levels = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Statefull Widget'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            '$levels',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.amber),
          ),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            setState(() {
              levels += 1;
            });
          },
          icon: Icon(
            Icons.add,
            color: Colors.amberAccent,
            size: 50,
          )),
    );
  }
}
