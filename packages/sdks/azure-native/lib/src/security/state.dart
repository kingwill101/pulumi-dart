/// Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
enum State {
  passed("Passed"),
  failed("Failed"),
  skipped("Skipped"),
  unsupported("Unsupported"),
  on("On"),
  off("Off");

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
