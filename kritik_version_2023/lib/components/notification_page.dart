import 'package:flutter/material.dart';


class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Center(
            child:Text(
              'No new Notification yet',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff808080), fontSize: 25),
              textAlign: TextAlign.center,
              ), 
          ),
        ),
      ),
    );
  }
}
