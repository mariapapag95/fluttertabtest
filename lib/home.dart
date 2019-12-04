import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List data1;
  List data2;
  List data3;

  List selection1;
  List selection2;
  List selection3;

  @override
  initState(){
    super.initState();
    data1 = ['Option A1', 'Option B1', 'Option C1'];
    data2 = ['Option A2', 'Option B2', 'Option C2'];
    data3 = ['Option A3', 'Option B3', 'Option C3'];

    selection1 = [];
    selection2 = [];
    selection3 = [];
  }

  select1(option) {
    selection1.add(option);
    print('$selection1 $selection2 $selection3');
  }

  select2(option) {
    selection2.add(option);
    print('$selection1 $selection2 $selection3');
  }

  select3(option) {
    selection3.add(option);
    print('$selection1 $selection2 $selection3');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'SPRYTE',
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.search), text: 'SEARCH'),
                Tab(
                  icon: Icon(Icons.category),
                  text: 'PROJECT TYPE',
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: 'SELECT STACK',
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('tab 1'),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: data1.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return RaisedButton(
                          onPressed: () => select1(data1[index]),
                            child: Text(data1[index]));
                      }
                  ),
                ),
              ],
            )),
            Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('tab 2'),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: data2.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return RaisedButton(
                            onPressed: () => select2(data2[index]),
                            child: Text(data2[index]));
                      }
                  ),
                ),
              ],
            )),
            Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('tab 3'),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: data3.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return RaisedButton(
                            onPressed: () => select3(data3[index]),
                            child: Text(data3[index]));
                      }
                  ),
                ),
              ],
            )),
          ],)),
    );
  }
}
