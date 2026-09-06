import 'package:pulumi/pulumi.dart' as pulumi;

/// The reason the incident was closed
enum IncidentClassification implements pulumi.PulumiEnum<String> {
  valueUndetermined("Undetermined"),
  valueTruePositive("TruePositive"),
  valueBenignPositive("BenignPositive"),
  valueFalsePositive("FalsePositive");

  const IncidentClassification(this.wireValue);
  @override
  final String wireValue;

  static IncidentClassification fromValue(String value) {
    for (final item in IncidentClassification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentClassification value: $value');
  }
}
