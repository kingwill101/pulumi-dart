/// The content type of a source control path.
enum ContentType {
  analyticsRule("AnalyticsRule"),
  automationRule("AutomationRule"),
  huntingQuery("HuntingQuery"),
  parser("Parser"),
  playbook("Playbook"),
  workbook("Workbook");

  const ContentType(this.wireValue);
  final String wireValue;

  static ContentType fromValue(String value) {
    for (final item in ContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentType value: $value');
  }
}
