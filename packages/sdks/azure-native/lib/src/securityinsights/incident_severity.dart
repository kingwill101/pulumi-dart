import 'package:pulumi/pulumi.dart' as pulumi;

/// The severity of the incident
enum IncidentSeverity implements pulumi.PulumiEnum<String> {
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low"),
  valueInformational("Informational");

  const IncidentSeverity(this.wireValue);
  @override
  final String wireValue;

  static IncidentSeverity fromValue(String value) {
    for (final item in IncidentSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentSeverity value: $value');
  }
}
