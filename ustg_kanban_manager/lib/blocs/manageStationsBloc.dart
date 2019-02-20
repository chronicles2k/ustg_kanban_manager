import 'package:ustg_kanban_manager/models/kanbanStation.dart';
import 'package:ustg_kanban_manager/repository/kanbanRepository.dart';
import 'package:rxdart/rxdart.dart';

class ManageStationsBloc {
  final _kanbanStationRepository = MockKanbanRepository();
  final _kanbanStationFetcher = PublishSubject<List<KanbanStation>>();

  Observable<List<KanbanStation>> get allStations =>
      _kanbanStationFetcher.stream;

  fetchAllStations() async {
    print('fetch all stations start');
    var stations = await _kanbanStationRepository.getStations();
    _kanbanStationFetcher.sink.add(stations);
    print('fetch all stations end');
  }

  dispose() {
    _kanbanStationFetcher.close();
  }
}
