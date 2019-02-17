import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/views/manageStationsView.dart';
import 'package:ustg_kanban_manager/blocs/manageStationsBloc.dart';

abstract class EditStationState extends State<EditStation> {
  bool isDirty;

  @protected
  final formKey = GlobalKey<FormState>();

  @protected
  void navigateToHome() {
    Navigator.popUntil(
        context, ModalRoute.withName(Navigator.defaultRouteName));

  }
}

class EditStation extends StatefulWidget {
  @protected
  final KanbanStation station;
  @protected
  final bool addMode;

  EditStation({Key key, @required this.station}) : addMode = station.id == "", super(key: key);

  @override
  ManageStationsView createState() => ManageStationsView();
}