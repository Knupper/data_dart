void main(List<String> args) async {
  DataService dataService = DataService();
  String data = await dataService.getData();

  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    await Future.delayed(Duration(seconds: 4));
    print('get data has finished');
    return 'fake data';
  }

  Future<int> _getDataFromLocal() async {
    await Future.delayed(Duration(seconds: 2));
    print('get data local has finished');
    return 23;
  }

  Future<String> getData() async {
    // bad 6 seconds time until we have all data
    final dataCloud = await _getDataFromCloud();
    final dataLocal = await _getDataFromLocal();

    // good 4 seconds until we get data
    final dataCloudFuture = _getDataFromCloud();
    final dataLocalFuture = _getDataFromLocal();

    final dataCloud2 = await dataCloudFuture;
    final dataLocal2 = await dataLocalFuture;

    // final data = await Future.wait([
    //   _getDataFromCloud(),
    //   _getDataFromCloud(),
    // ]);
    // final [cloudA, cloudB] = await Future.wait([
    //   _getDataFromCloud(),
    //   _getDataFromCloud(),
    // ]);

    await Future.wait([
      _getDataFromCloud(),
      _getDataFromLocal(),
    ]).then((value) {
      // weitere aufrufe
      // final [a, b] = value;
    });

    return 'test';
  }
}
