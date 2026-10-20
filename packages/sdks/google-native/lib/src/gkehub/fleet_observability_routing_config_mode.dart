import 'package:pulumi/pulumi.dart' as pulumi;

/// mode configures the logs routing mode.
enum FleetObservabilityRoutingConfigMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  copy("COPY"),
  move("MOVE");

  const FleetObservabilityRoutingConfigMode(this.wireValue);
  @override
  final String wireValue;

  static FleetObservabilityRoutingConfigMode fromValue(String value) {
    for (final item in FleetObservabilityRoutingConfigMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetObservabilityRoutingConfigMode value: $value');
  }
}
