import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double size = 18;

  double decrementor() {
    setState(() {
      size -= 1;
    });
    return size;
  }

  double increment() {
    setState(() {
      size += 1;
    });
    return size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FontSizeController'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                if (size > 8) decrementor();
              },
              icon: Icon(Icons.minimize),
            ),
            Text(
              'Mouse',
              style: TextStyle(fontSize: size),
            ),
            IconButton(
                onPressed: () {
                  if (size < 30) increment();
                },
                icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
