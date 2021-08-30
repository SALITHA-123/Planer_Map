import 'package:flutter/material.dart';

class Topics extends StatefulWidget {

  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      margin: EdgeInsets.all(12),
      //color: Colors.red,
      alignment: Alignment.centerLeft,
      child: Text(
        "Planters",
        style: const TextStyle(
            color:  const Color(0xff000000),
            fontWeight: FontWeight.w700,
            fontFamily: "Questrial",
            fontStyle:  FontStyle.normal,
            fontSize: 25.0
        ),
      ),
    );
  }
}
