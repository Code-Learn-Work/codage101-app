import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  
  TabController _tabController;

  @override
    void initState(){
      super.initState();
      _tabController = TabController(vsync: this,length: 3,initialIndex: 1);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("Codage101"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: new Icon(Icons.more_vert),
          )
        ],
        bottom: new TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            new Tab(
              child: Icon(Icons.account_circle),
            ),
            new Tab(
              child: Icon(Icons.home),
            ),
            new Tab(
              child: Icon(Icons.call),
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          BioScreen(),
          HomeScreen(),
          ContactScreen()
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.refresh), 
          onPressed: () {},
        ),
      ),
    );
  }
}