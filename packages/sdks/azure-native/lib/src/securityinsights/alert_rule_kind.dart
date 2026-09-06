import 'package:pulumi/pulumi.dart' as pulumi;

/// The alert rule kind
enum AlertRuleKind implements pulumi.PulumiEnum<String> {
  valueScheduled("Scheduled"),
  valueMicrosoftSecurityIncidentCreation("MicrosoftSecurityIncidentCreation"),
  valueFusion("Fusion");

  const AlertRuleKind(this.wireValue);
  @override
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
