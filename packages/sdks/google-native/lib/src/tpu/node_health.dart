import 'package:pulumi/pulumi.dart' as pulumi;

/// The health status of the TPU node.
enum NodeHealth implements pulumi.PulumiEnum<String> {
  healthUnspecified("HEALTH_UNSPECIFIED"),
  healthy("HEALTHY"),
  deprecatedUnhealthy("DEPRECATED_UNHEALTHY"),
  timeout("TIMEOUT"),
  unhealthyTensorflow("UNHEALTHY_TENSORFLOW"),
  unhealthyMaintenance("UNHEALTHY_MAINTENANCE");

  const NodeHealth(this.wireValue);
  @override
  final String wireValue;

  static NodeHealth fromValue(String value) {
    for (final item in NodeHealth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeHealth value: $value');
  }
}
