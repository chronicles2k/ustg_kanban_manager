import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/viewmodels/manageStationsState.dart';

class ManageStationsView extends ManageStationsState {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllStations();
    return Scaffold(
      appBar: AppBar(title: Text("Kanban Manager: Manage Stations")),
      body: getStreamBuilder(),
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
              onTap: navigateToAddStation,
              title: Text("Add Station"),
            ),
            ListTile()
          ],
        ),
      ),
    );
  }

  StreamBuilder<List<KanbanStation>> getStreamBuilder() {
    return StreamBuilder(
      stream: bloc.allStations,
      builder: (context, AsyncSnapshot<List<KanbanStation>> snapshot) {
        if (snapshot.hasData) {
          return buildList(snapshot);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget buildList(AsyncSnapshot<List<KanbanStation>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(snapshot.data[index].id),
          subtitle: Text(snapshot.data[index].name),
          onTap: () => {
            
          },
        );
      },
    );
  }
}
