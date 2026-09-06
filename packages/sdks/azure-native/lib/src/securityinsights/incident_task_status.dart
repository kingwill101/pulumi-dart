import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the task
enum IncidentTaskStatus implements pulumi.PulumiEnum<String> {
  valueNew("New"),
  valueCompleted("Completed");

  const IncidentTaskStatus(this.wireValue);
  @override
  final String wireValue;

  static IncidentTaskStatus fromValue(String value) {
    for (final item in IncidentTaskStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentTaskStatus value: $value');
  }
}
