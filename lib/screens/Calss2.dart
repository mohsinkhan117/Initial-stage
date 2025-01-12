import 'package:flutter/material.dart';
import 'package:project/screens/Details.dart';

class MyLearning extends StatefulWidget {
  const MyLearning({super.key});

  @override
  State<MyLearning> createState() => _MyLearningState();
}

class _MyLearningState extends State<MyLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: const Color.fromARGB(255, 37, 37, 35),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: const Color.fromARGB(255, 109, 104, 158),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Myformdetails()));
                        });
                      },
                      icon: Icon(Icons.more_vert),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share))
                  ],
                ),
                title: Text(
                  'Mohsin Khan',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text('Batch 26 DCSE'),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 50));
  }
}
