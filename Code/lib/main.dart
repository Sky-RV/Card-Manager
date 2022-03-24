import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Manager',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        ////////////////////////////// APP BAR //////////////////////////////

        appBar: AppBar(
          title: Text("Card Manager", style: TextStyle(color: Colors.purple,)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Color(0xFFFFFFFF),
            unselectedLabelColor: Color(0xAE000000),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)
              ),
              color: Color(0xFFD4A5E2)
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.credit_card),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Your Cards'),
                ),
              ),
              Tab(
                icon: Icon(Icons.credit_card),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Saving Cards'),
                ),
              ),
            ],
          ),
        ),

        ////////////////////////////// BODY //////////////////////////////

        body: TabBarView(
          children: [

            // Owner Tab
            Center(
              child: Icon(
                Icons.hourglass_empty,
                size: 52,
                color: Color(0xFFA19C9C),
              ),
            ),

            // Others Tab
            Center(
              child: Icon(
                Icons.article_rounded,
                size: 52,
                color: Color(0xFFA19C9C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}