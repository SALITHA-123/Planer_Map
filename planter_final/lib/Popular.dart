import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/Profiles.dart';

class Popular extends StatefulWidget {

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {


  Future<List<Person>> getProfiles() async {
    final response = await http.get(Uri.parse("https://plantapp.wearedesigners.net/api"));
    final responseBody = jsonDecode(response.body) ;

    Profiles profiles = Profiles.fromJson(responseBody);
    final list = profiles.people as List <Person>;
    print('<<<<<<<<<<<<<<<<<<<<<<Load>>>>>>>>>>>>>>>>>>');
    print('$list Done>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getProfiles(),
      builder: (context,data){
          return  ListView.builder(
            itemCount:4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLhw1hom4oW6IWEQuto3saqEeSLxvuoXLwzsmVBGp_h17QazW7sPgNi5iR3ZfC3vuSzRc&usqp=CAU')
                            ),
                          ),
                        ),
                        Expanded(flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 70,
                            //color: Colors.red,
                            child: Column(
                              children: [

                                /// Row1
                                Row(
                                  children: [
                                    Expanded(flex: 7,
                                      child: Container(
                                        alignment: Alignment
                                            .centerLeft,
                                        //color: Colors.black,
                                        margin: EdgeInsets.all(2),
                                        height: 30,
                                        child: Text(
                                          'Sarah Alyoya',
                                          style: const TextStyle(
                                              color: const Color(
                                                  0xff000000),
                                              fontWeight: FontWeight
                                                  .w600,
                                              fontFamily: "NunitoSans",
                                              fontStyle: FontStyle
                                                  .normal,
                                              fontSize: 18
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        //color: Colors.black,
                                        margin: EdgeInsets.all(2),
                                        height: 15,
                                        child: Image.asset(
                                          'images/star.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fill,),
                                      ),
                                    ),
                                    Expanded(flex: 2,
                                      child: Container(
                                        //color: Colors.black,
                                        alignment: Alignment
                                            .center,
                                        margin: EdgeInsets.all(2),
                                        height: 30,
                                        child: Text('4.9',
                                            style: const TextStyle(
                                                color: const Color(
                                                    0xff333333),
                                                fontWeight: FontWeight
                                                    .w600,
                                                fontFamily: "NunitoSans",
                                                fontStyle: FontStyle
                                                    .normal,
                                                fontSize: 18
                                            )
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                /// Row2
                                Row(
                                  children: [
                                    Expanded(flex: 1,
                                        child: Container(
                                          //color: Colors.black,
                                          margin: EdgeInsets.all(
                                              2),
                                          height: 30,
                                          child: Text(
                                            '15 - 20 min',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors
                                                    .black45),
                                          ),
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 3,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 55,
                            //color: Colors.red,
                            child: FlatButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius
                                      .circular(10.0)),
                              child: Text(
                                'Connect ',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Color(0xff94b547),
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          );
      }
    );


  }
}
