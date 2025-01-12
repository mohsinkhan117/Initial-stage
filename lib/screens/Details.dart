import 'package:flutter/material.dart';

class Myformdetails extends StatefulWidget {
  const Myformdetails({super.key});

  @override
  State<Myformdetails> createState() => _MyformdetailsState();
}

class _MyformdetailsState extends State<Myformdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              maxRadius: 50,
              child: Icon(
                Icons.person,
                color: const Color.fromARGB(255, 109, 104, 158),
                size: 40,
              ),
              backgroundColor: const Color.fromARGB(255, 22, 22, 22),
            ),
          ),
        ],
      )),
    );
  }
}
