/// The classification reason the incident was closed with
enum IncidentClassificationReason {
  valueSuspiciousActivity("SuspiciousActivity"),
  valueSuspiciousButExpected("SuspiciousButExpected"),
  valueIncorrectAlertLogic("IncorrectAlertLogic"),
  valueInaccurateData("InaccurateData");

  const IncidentClassificationReason(this.wireValue);
  final String wireValue;

  static IncidentClassificationReason fromValue(String value) {
    for (final item in IncidentClassificationReason.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentClassificationReason value: $value');
  }
}

