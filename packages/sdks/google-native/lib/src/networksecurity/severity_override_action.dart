/// Required. Threat action override.
enum SeverityOverrideAction {
  threatActionUnspecified("THREAT_ACTION_UNSPECIFIED"),
  defaultAction("DEFAULT_ACTION"),
  allow("ALLOW"),
  alert("ALERT"),
  deny("DENY");

  const SeverityOverrideAction(this.wireValue);
  final String wireValue;

  static SeverityOverrideAction fromValue(String value) {
    for (final item in SeverityOverrideAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeverityOverrideAction value: $value');
  }
}

