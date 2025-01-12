import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

int initial = 8;
void incrementor() {
  if (initial < 30) initial++;
}

void decrementor() {
  if (initial > 8) initial--;
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inc/Dec '),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    decrementor();
                  });
                },
                icon: Icon(
                  Icons.minimize,
                  color: const Color.fromARGB(255, 109, 104, 158),
                )),
            Text(
              '$initial',
              style: TextStyle(
                  fontSize: 50,
                  color: const Color.fromARGB(255, 109, 104, 158),
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    incrementor();
                  });
                },
                icon: Icon(
                  Icons.add,
                  color: const Color.fromARGB(255, 109, 104, 158),
                ))
          ],
        ),
      ),
    );
  }
}
