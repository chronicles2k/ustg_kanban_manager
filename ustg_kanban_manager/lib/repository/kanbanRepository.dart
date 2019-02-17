import 'package:ustg_kanban_manager/models/kanbanStation.dart';

abstract class KanbanRepositoryBase {
  Future<List<KanbanStation>> getStations();
}

class MockKanbanRepository implements KanbanRepositoryBase {
  @override
  Future<List<KanbanStation>> getStations() async {
    await Future.delayed(const Duration(seconds: 3));
    List<KanbanStation> stations = List<KanbanStation>();
    var s = KanbanStation();
    s.id = "AA01";
    s.name = "Dragon POU";

    stations.add(s);
    return stations;
  }
}
