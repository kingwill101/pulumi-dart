enum DataSource {
  valueTwinData("TwinData");

  const DataSource(this.value);
  final String value;

  static DataSource fromValue(String value) {
    for (final item in DataSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSource value: $value');
  }
}

