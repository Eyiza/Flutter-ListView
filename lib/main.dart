import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  dynamic list(String text1, String text2, String text3) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 10.0),
      child: Card(
        margin: EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Text(
                '$text1',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                '$text2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                '$text3',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              color: Colors.greenAccent.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'JOIN GROUP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.group,
                color: Colors.greenAccent.shade700,
                size: 30.0,
              ),
              Text(
                'Groups',
                style: TextStyle(
                  color: Colors.greenAccent.shade700,
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            list('Presenters', 'Presenters', 'ABIA STATE* ABA NORTH'),
            list('OUK MOVEMENT ABA BRANCH', 'OUK MOVEMENT ABA BRANCH',
                'ABIA STATE* AROCHUWU'),
            list('Imo State', 'For all indigenes of Imo state',
                'ABIA STATE* BENDE'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent.shade700,
        ),
      ),
    );
  }
}
