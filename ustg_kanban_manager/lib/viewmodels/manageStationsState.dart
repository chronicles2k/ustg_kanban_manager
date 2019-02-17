import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/views/manageStationsView.dart';
import 'package:ustg_kanban_manager/blocs/manageStationsBloc.dart';

abstract class ManageStationsState extends State<ManageStations> {
  @protected
  ManageStationsBloc bloc = ManageStationsBloc();

  @protected
  void navigateToHome() {
    Navigator.popUntil(
        context, ModalRoute.withName(Navigator.defaultRouteName));
  }

  @protected
  void navigateToAddStation() {}
}

class ManageStations extends StatefulWidget {
  ManageStations({Key key}) : super(key: key);

  @override
  ManageStationsView createState() => ManageStationsView();
}
// class HomePage extends StatefulWidget {
//   HomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   HomePageView createState() => HomePageView();
// }
