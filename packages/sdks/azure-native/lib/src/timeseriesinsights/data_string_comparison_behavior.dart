/// The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
enum DataStringComparisonBehavior {
  valueOrdinal("Ordinal"),
  valueOrdinalIgnoreCase("OrdinalIgnoreCase");

  const DataStringComparisonBehavior(this.wireValue);
  final String wireValue;

  static DataStringComparisonBehavior fromValue(String value) {
    for (final item in DataStringComparisonBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStringComparisonBehavior value: $value');
  }
}

