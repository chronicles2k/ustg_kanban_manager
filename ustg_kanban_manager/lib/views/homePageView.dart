import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/homePageState.dart';

class HomePageView extends HomePageState {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text("Drawer Header")),
            Divider(),
            ListTile(
              title: Text("Home"),
              onTap: navigateToHome,
            ),
            ListTile(
              onTap: navigateToManageStations,
              title: Text("Test"),
            ),
            ListTile()
          ],
        ),
      ),
    );
  }
}
