/// The state of the data masking policy.
enum DataMaskingState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataMaskingState(this.value);
  final String value;

  static DataMaskingState fromValue(String value) {
    for (final item in DataMaskingState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingState value: $value');
  }
}

