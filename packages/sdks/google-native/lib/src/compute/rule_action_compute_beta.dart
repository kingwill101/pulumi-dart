/// This is deprecated and has no effect. Do not use.
enum RuleActionComputeBeta {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

  const RuleActionComputeBeta(this.wireValue);
  final String wireValue;

  static RuleActionComputeBeta fromValue(String value) {
    for (final item in RuleActionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleActionComputeBeta value: $value');
  }
}

