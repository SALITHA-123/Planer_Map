import 'package:flutter/material.dart';
import 'package:planter_final/Popular.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child:Container(
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                flexibleSpace: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Popular',
                        style: const TextStyle(
                          // color: Color(0xff5d6e1e),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NunitoSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text(
                          'Professional',
                          style: const TextStyle(
                            //color:  const Color(0xffafafaf),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NunitoSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text(
                          'Following',
                          style: const TextStyle(
                            //color:  const Color(0xffafafaf),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NunitoSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text(
                          'Closed',
                          style: const TextStyle(
                            // color:  const Color(0xffafafaf),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NunitoSans",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ],
                  labelColor: Color((0xff5d6e1e)),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.lightGreen,
                  unselectedLabelColor: Color((0xffafafaf)),
                  indicatorWeight: 3,
                ),
              ),
              body: TabBarView(
                children: [
                  Container(
                      width: 400,
                      height: 200,
                      child: Popular()
                  ),
                  Container(

                  ),
                  Container(

                  ),
                  Container(

                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
