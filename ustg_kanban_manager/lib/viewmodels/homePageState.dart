import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/main.dart';
import 'package:ustg_kanban_manager/viewmodels/manageStationsState.dart';
import 'package:ustg_kanban_manager/views/manageStationsView.dart';

abstract class HomePageState extends State<HomePage> {
  @protected
  int counter = 0;

  @protected
  void incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      counter++;
    });
  }

  @protected
  void navigateToManageStations() {
    // close the open drawer
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ManageStations()));
  }

  @protected
  void navigateToHome() {
    Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
  }
}
