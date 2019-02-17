import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/viewmodels/editStationState.dart';
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
  void navigateToEditStation(KanbanStation station) {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EditStation(station: station)));
  }
}

class ManageStations extends StatefulWidget {
  ManageStations({Key key}) : super(key: key);

  @override
  ManageStationsView createState() => ManageStationsView();
}
