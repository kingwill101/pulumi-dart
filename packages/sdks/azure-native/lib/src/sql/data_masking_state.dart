/// The state of the data masking policy.
enum DataMaskingState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataMaskingState(this.wireValue);
  final String wireValue;

  static DataMaskingState fromValue(String value) {
    for (final item in DataMaskingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingState value: $value');
  }
}
