import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/homePageState.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomePage(),
        '/manageStations': (BuildContext context) => new ManageStations()
      },
    );
  }
}
