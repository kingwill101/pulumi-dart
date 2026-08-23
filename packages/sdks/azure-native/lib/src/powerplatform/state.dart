/// lockbox configuration
enum State {
  enabled("Enabled"),
  disabled("Disabled"),
  notConfigured("NotConfigured");

  const State(this.wireValue);
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
