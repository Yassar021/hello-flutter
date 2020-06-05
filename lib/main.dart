import 'package:flutter/material.dart';
import 'custom_colors.dart';
import 'font_styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Yassar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // theme data
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter',
            style: navHeader,
          ),
          backgroundColor: darkBlue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.yellowAccent,
            )
          ],
        ), // App Bar
        body: SafeArea(
          child: Container(
              margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              padding:
                  EdgeInsets.only(left: 0, top: 100.0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image(
                          image: AssetImage('assets/images/yjr.jpeg'),
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Hello yassar',
                          style: mainHeader,
                        ),
                      ),
                      Text(
                        'Congratulations for your first app \nin Flutter.',
                        style: subHeader,
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
