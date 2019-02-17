import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/manageStationsState.dart';
import 'package:ustg_kanban_manager/views/homePageView.dart';

abstract class HomePageState extends State<HomePage> {
  @protected
  int counter = 0;

  @protected
  void incrementCounter() {
    setState(() {
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

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageView createState() => HomePageView();
}
