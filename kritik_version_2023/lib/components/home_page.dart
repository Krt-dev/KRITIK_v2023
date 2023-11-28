import 'package:flutter/material.dart';
import 'package:kritik_version_2023/components/establishment_grid.dart';
import 'package:kritik_version_2023/components/search_bar_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: SearchBarAndProfile(),
          ),
          EstablishmentsGrid(),
        ]),
      ),
    );
  }
}
