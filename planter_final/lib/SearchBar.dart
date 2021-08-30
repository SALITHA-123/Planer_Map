import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(flex: 1,
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(15),
                height: 60,
                child: Row(
                  children: [
                    Expanded(flex: 1,
                      child: Container(
                        height: 16,
                        // color: Colors.red,
                        margin: EdgeInsets.all(10),
                        child: Image.asset('images/arrow.png',width: 20,height:10,fit: BoxFit.fill),
                      ),
                    ),
                    Expanded(flex: 6,
                      child:Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          "Planter Map",
                          style: const TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Questrial",
                              fontStyle:  FontStyle.normal,
                              fontSize: 22.0
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1,
                      child:Container(
                          height: 25,
                          margin: EdgeInsets.all(10),
                          child:Image.asset('images/search.png',width: 10,height:10,fit: BoxFit.fill)
                      ),
                    )
                  ],
                ),
              )
          )
        ]
    );
  }
}
