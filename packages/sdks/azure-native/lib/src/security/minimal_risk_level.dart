import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the minimal attach path risk level which will be sent as email notifications
enum MinimalRiskLevel implements pulumi.PulumiEnum<String> {
  critical("Critical"),
  high("High"),
  medium("Medium"),
  low("Low");

  const MinimalRiskLevel(this.wireValue);
  @override
  final String wireValue;

  static MinimalRiskLevel fromValue(String value) {
    for (final item in MinimalRiskLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalRiskLevel value: $value');
  }
}
