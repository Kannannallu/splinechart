import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ListView '),
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
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    var entries;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          children: <Widget>[

            ListView(
              padding:  EdgeInsets.all(8),

              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('id')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('name')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('user name')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('email')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('address')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('phone')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('website')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: Center(child: Text('company')),
                ),

              ],
            ),
        FutureBuilder(
        future: fetchData(),
         builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.none &&
        snapshot.hasData == null) {

        return  ListView.builder(
       padding:  EdgeInsets.all(8),
       itemCount: entries.length,
       itemBuilder: (BuildContext context, int index) {
       return Container(
       height: 50,
       color: Colors.blue[colorCodes[index]],
       child: Center(child: Text('Name ${names[index]}')),
    );
       }
       )
          ],
      ),
    );
  }
}

    Future<List<api>>  fetchData() async {
    List<Test> list  = [Test("id),
    Test("name),
    Test("username),
    Test("email"),
    Test("address),
    Test("phone"),
    Test("website"),
    Test("company),

    ];
    return list;
    }





