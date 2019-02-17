import 'package:flutter/material.dart';
import 'package:ustg_kanban_manager/viewmodels/editStationState.dart';

class EditStationView extends EditStationState {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Station ID"
                    ),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Station ID is required";
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          
                        }
                      },
                    )
                  ),
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
