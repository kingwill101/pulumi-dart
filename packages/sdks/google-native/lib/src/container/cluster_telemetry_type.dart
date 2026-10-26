import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the integration.
enum ClusterTelemetryType implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  systemOnly("SYSTEM_ONLY");

  const ClusterTelemetryType(this.wireValue);
  @override
  final String wireValue;

  static ClusterTelemetryType fromValue(String value) {
    for (final item in ClusterTelemetryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterTelemetryType value: $value');
  }
}
