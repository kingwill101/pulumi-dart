/// Describe whether this data type connection is enabled or not.
enum DataTypeState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataTypeState(this.wireValue);
  final String wireValue;

  static DataTypeState fromValue(String value) {
    for (final item in DataTypeState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataTypeState value: $value');
  }
}
