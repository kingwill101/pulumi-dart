import 'package:pulumi/pulumi.dart' as pulumi;

/// mode configures the logs routing mode.
enum FleetObservabilityRoutingConfigModeGkehubV1alpha implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  copy("COPY"),
  move("MOVE");

  const FleetObservabilityRoutingConfigModeGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static FleetObservabilityRoutingConfigModeGkehubV1alpha fromValue(String value) {
    for (final item in FleetObservabilityRoutingConfigModeGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetObservabilityRoutingConfigModeGkehubV1alpha value: $value');
  }
}
