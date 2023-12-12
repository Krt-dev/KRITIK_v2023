import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child:Text(
              'No Profile Created',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff808080), fontSize: 25),
              textAlign: TextAlign.center,
              ), 
          ),
        ),
      ),
    );
  }
}
