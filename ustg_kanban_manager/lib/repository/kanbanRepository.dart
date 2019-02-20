import 'dart:async';
import 'package:ustg_kanban_manager/models/kanbanStation.dart';

abstract class KanbanRepository {
  Future<List<KanbanStation>> getStations();
  Future<void> updateStation(KanbanStation station);
}

class MockKanbanRepository implements KanbanRepository {
  static final List<KanbanStation> _list = new List<KanbanStation>();

  factory MockKanbanRepository() {
    if (_list.length == 0) {
      var aa01 = KanbanStation();
      aa01.id = "AA01";
      aa01.name = "Dragon POU";
      _list.add(aa01);

      var ab03 = KanbanStation();
      ab03.id = "AB03";
      ab03.name = "Enterprise POU";
      _list.add(ab03);

      var zz02 = KanbanStation();
      zz02.id = "ZZ02";
      zz02.name = "Death Star POU";
      _list.add(zz02);

      var zz90 = KanbanStation();
      zz90.id = "ZZ90";
      zz90.name = "ZZ90 POU";
      _list.add(zz90);
    }

    return MockKanbanRepository._internal();
  }

  MockKanbanRepository._internal();

  @override
  Future<List<KanbanStation>> getStations() async {
    print('repo get stations start');
    await Future.delayed(const Duration(seconds: 2));
    print('repo get stations end');
    return _list;
  }

  @override
  Future<void> updateStation(KanbanStation station) async {
    await Future.delayed(const Duration(seconds: 2));
    var s = _list.where((f) => f.id == station.id);
    if (s.length == 1) {
      var st = s.first;
      st.name = station.name;
    }
  }
}
