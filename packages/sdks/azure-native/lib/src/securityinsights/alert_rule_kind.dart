/// The alert rule kind
enum AlertRuleKind {
  valueScheduled("Scheduled"),
  valueMicrosoftSecurityIncidentCreation("MicrosoftSecurityIncidentCreation"),
  valueFusion("Fusion");

  const AlertRuleKind(this.wireValue);
  final String wireValue;

  static AlertRuleKind fromValue(String value) {
    for (final item in AlertRuleKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleKind value: $value');
  }
}

