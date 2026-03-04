enum DataSource {
  valueTwinData("TwinData");

  const DataSource(this.wireValue);
  final String wireValue;

  static DataSource fromValue(String value) {
    for (final item in DataSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSource value: $value');
  }
}
