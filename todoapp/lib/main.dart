import 'package:flutter/material.dart';
import './models/global.dart' as myStyle;
import "./UI/intray/intray.dart" as intray;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ToDoApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              title: TabBar(
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.rss_feed)),
                    Tab(icon: Icon(Icons.perm_identity)),
                  ],
                  labelColor: myStyle.darkGreyColor,
                  unselectedLabelColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.all(5.0),
                  indicatorColor: Colors.transparent),
              backgroundColor: Colors.white,
            ),
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: <Widget>[
                    intray.IntrayPage(),
                    Container(color: Colors.orange),
                    Container(color: Colors.lightGreen),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Intray', style: myStyle.intrayTitleStyle),
                      Container(),
                    ],
                  ),
                  padding: EdgeInsets.only(left: 30.0),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  margin: EdgeInsets.only(
                      top: 120.0,
                      left: MediaQuery.of(context).size.width * 0.5 - 40),
                  child: FloatingActionButton(
                    onPressed: () {
                      debugPrint("jei");
                    },
                    child: Icon(
                      Icons.add,
                      size: 70.0,
                    ),
                    backgroundColor: myStyle.redColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
