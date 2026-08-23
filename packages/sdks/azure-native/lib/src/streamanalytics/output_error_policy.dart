/// Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
enum OutputErrorPolicy {
  valueStop("Stop"),
  valueDrop("Drop");

  const OutputErrorPolicy(this.wireValue);
  final String wireValue;

  static OutputErrorPolicy fromValue(String value) {
    for (final item in OutputErrorPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputErrorPolicy value: $value');
  }
}
