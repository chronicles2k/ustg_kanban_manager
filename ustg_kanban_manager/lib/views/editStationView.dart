import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/editStationState.dart';

class EditStationView extends EditStationState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USTG Kanban Manager"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        "Edit a Station",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      )),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Station ID"),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Station ID is required";
                      }
                    },
                    initialValue: widget.station.id,
                    onSaved: (s) {
                      widget.station.id = s;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Station Name"),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Station Name is required";
                      }
                    },
                    initialValue: widget.station.name,
                    onSaved: (s) {
                      widget.station.name = s;
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          if (formKey.currentState.validate()) {
                            formKey.currentState.save();
                            Navigator.pop(context, widget.station);
                          }
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text("Drawer Header")),
            Divider(),
            ListTile(
              title: Text("Home"),
              onTap: navigateToHome,
            ),
          ],
        ),
      ),
    );
  }
}
