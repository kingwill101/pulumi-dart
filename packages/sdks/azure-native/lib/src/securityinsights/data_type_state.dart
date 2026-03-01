/// Describe whether this data type connection is enabled or not.
enum DataTypeState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataTypeState(this.value);
  final String value;

  static DataTypeState fromValue(String value) {
    for (final item in DataTypeState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataTypeState value: $value');
  }
}

