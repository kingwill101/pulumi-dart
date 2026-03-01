/// Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
enum State {
  valueOn("On"),
  valueOff("Off");

  const State(this.value);
  final String value;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}

