import 'package:flutter/material.dart';
import 'package:flutter_exam/src/main/sub_page.dart';

class LauncherPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LauncherState();
}

class LauncherState extends State<LauncherPage> {
  int number = 0;

  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.backup, color: Colors.white,),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text(
          'Example title',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: textEditingController,
                ),
                RaisedButton(
                  child: Text("등록"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SubPage()),
                    );
                  },
                )
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            number++;
          });
        },
      ),
    );
  }
}