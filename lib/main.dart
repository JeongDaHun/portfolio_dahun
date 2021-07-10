import 'package:flutter/material.dart';
import 'package:portfolio_dahun/util/link_parsing.dart';
import 'package:portfolio_dahun/util/onemoa_point_color.dart';
import 'package:portfolio_dahun/util/string_resource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Welcome To DaHun Jeong Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: PFColor.transparent,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: PFColor.silver,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://avatars.githubusercontent.com/u/57787132?v=4'),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: PFColor.whiteTwo,
        // title: Text(widget.title, style: Styles.B_BLACK_BOLD,),
        centerTitle: true,
        iconTheme: IconThemeData(color: PFColor.greyishBrown),
        // bottom: PreferredSize(
        //   child: Container(
        //     color: PFColor.silver,
        //     height: 1.0,
        //   ),
        //   preferredSize: Size.fromHeight(0.5),
        // ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
            child: Text('정 다훈 Jeong DaHun', style: TextStyle(fontSize: 26.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.black)),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: Text('Career', style: Styles.B_BLACK_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Row(
                    children: [
                      Text('  ⚫ 원모아 시스템(주) ', style: Styles.L_GREYISH_BROWN_BOLD),
                      Text('(2020. 03. 11 ~ 현재)', style: Styles.L_BLACK_BOLD),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                  child: Row(
                    children: [
                      Text('Stack', style: Styles.B_BLACK_BOLD),
                      Text(' - 다룰 수 있는 언어 및 기술', style: Styles.L_GREYISH_BROWN_BOLD),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ C', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ Java', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ Dart', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ PHP', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ MySql', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ Flutter 크로스 플랫폼 개발(Dart)', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text('  ⚫ Android Native App 개발(Java)', style: Styles.L_GREYISH_BROWN_BOLD),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
              child: Text('SOFTWARE', style: Styles.B_BLACK_BOLD),
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
              child: Text('WORK EXPERIENCE', style: Styles.B_BLACK_BOLD),
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
              child: Text('CONTACT', style: Styles.B_BLACK_BOLD,),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
            child: Text('  ⚫ Email: ekgns060@gmail.com', style: Styles.L_GREYISH_BROWN_BOLD),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
            child: Text('  ⚫ tel: 010-5687-9507', style: Styles.L_GREYISH_BROWN_BOLD),
          ),
          GestureDetector(
            onTap: () {
              print('ddd');
              LinkParsing().urlParsing(context, 'https://github.com/JeongDaHun');
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              child: Row(
                children: [
                  Text('  ⚫ GitHub: ', style: Styles.L_GREYISH_BROWN_BOLD),
                  Text('https://github.com/JeongDaHun', style: Styles.L_BLACK_BOLD),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
