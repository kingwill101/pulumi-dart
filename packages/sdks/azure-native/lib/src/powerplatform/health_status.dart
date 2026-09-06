import 'package:pulumi/pulumi.dart' as pulumi;

/// The health status of the resource.
enum HealthStatus implements pulumi.PulumiEnum<String> {
  undetermined("Undetermined"),
  healthy("Healthy"),
  warning("Warning"),
  unhealthy("Unhealthy");

  const HealthStatus(this.wireValue);
  @override
  final String wireValue;

  static HealthStatus fromValue(String value) {
    for (final item in HealthStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthStatus value: $value');
  }
}
