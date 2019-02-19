import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/views/editStationView.dart';

abstract class EditStationState extends State<EditStation> {
  @protected
  final formKey = GlobalKey<FormState>();

  bool isNewStation() => widget.station.id == "";

  @protected
  void navigateToHome() {
    Navigator.popUntil(
        context, ModalRoute.withName(Navigator.defaultRouteName));
  }
}

class EditStation extends StatefulWidget {
  final KanbanStation station;
  @protected
  final bool addMode;

  EditStation({Key key, @required this.station}) : addMode = station.id == "", super(key: key);

  @override
  EditStationView createState() => EditStationView();
}