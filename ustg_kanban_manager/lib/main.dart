import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/manageStationsState.dart';
import 'package:ustg_kanban_manager/views/homePageView.dart';
import 'package:ustg_kanban_manager/views/manageStationsView.dart';

void main() => runApp(KanbanManagerApp());

class KanbanManagerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kanban Manager',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'USTG Kanban Manager'),
      routes: <String, WidgetBuilder> {
          '/home': (BuildContext context) => new HomePage(title: 'Home'),
          '/manageStations': (BuildContext context) => new ManageStations()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  HomePageView createState() => HomePageView();
}


  
