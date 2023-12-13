import 'package:flutter/material.dart';


class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Saved",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Center(
            child:Text(
              'No Book marks yet',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff808080), fontSize: 25),
              textAlign: TextAlign.center,
              ), 
          ),
        ),
      ),
    );
  }
}
