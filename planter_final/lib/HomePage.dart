import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planter_final/Map.dart';
import 'package:planter_final/Models/Profiles.dart';
import 'package:planter_final/SearchBar.dart';
import 'package:planter_final/Topic.dart';


import 'Tabs.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: Colors.white,
            body:SafeArea(
                child: Column(
                    children: [
                      Search(),// Search Bar

                      Maps(),

                      Container(
                        //height: 200,
                        //color: Colors.red,
                          child :Topics()
                      ),
                      Container(
                          height: 250,
                          child:Tabs()
                      ),
                    ]
                )
            ),
          );

  }
}
