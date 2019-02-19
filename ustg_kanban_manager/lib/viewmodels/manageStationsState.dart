import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/repository/kanbanRepository.dart';
import 'package:ustg_kanban_manager/viewmodels/editStationState.dart';
import 'package:ustg_kanban_manager/views/manageStationsView.dart';
import 'package:ustg_kanban_manager/blocs/manageStationsBloc.dart';

abstract class ManageStationsState extends State<ManageStations> {
  @protected
  ManageStationsBloc bloc = ManageStationsBloc();
  MockKanbanRepository repo = MockKanbanRepository();

  @protected
  void navigateToHome() {
    Navigator.popUntil(
        context, ModalRoute.withName(Navigator.defaultRouteName));
  }

  @protected
  void navigateToEditStation(KanbanStation station) async {
    Navigator.pop(context);
    var editedStation = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => EditStation(station: station)));
    await repo.updateStation(editedStation);
//    setState(() {});
  }
}

class ManageStations extends StatefulWidget {
  ManageStations({Key key}) : super(key: key);

  @override
  ManageStationsView createState() => ManageStationsView();
}
