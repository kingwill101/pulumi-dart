import 'package:pulumi/pulumi.dart' as pulumi;

/// The content type of a source control path.
enum ContentType implements pulumi.PulumiEnum<String> {
  analyticsRule("AnalyticsRule"),
  automationRule("AutomationRule"),
  huntingQuery("HuntingQuery"),
  parser("Parser"),
  playbook("Playbook"),
  workbook("Workbook");

  const ContentType(this.wireValue);
  @override
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
