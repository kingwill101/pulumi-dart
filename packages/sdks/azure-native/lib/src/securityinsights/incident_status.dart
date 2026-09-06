import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the incident
enum IncidentStatus implements pulumi.PulumiEnum<String> {
  valueNew("New"),
  valueActive("Active"),
  valueClosed("Closed");

  const IncidentStatus(this.wireValue);
  @override
  final String wireValue;

  static IncidentStatus fromValue(String value) {
    for (final item in IncidentStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentStatus value: $value');
  }
}
