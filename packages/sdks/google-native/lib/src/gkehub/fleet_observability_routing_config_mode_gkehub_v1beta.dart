/// mode configures the logs routing mode.
enum FleetObservabilityRoutingConfigModeGkehubV1beta {
  modeUnspecified("MODE_UNSPECIFIED"),
  copy("COPY"),
  move("MOVE");

  const FleetObservabilityRoutingConfigModeGkehubV1beta(this.wireValue);
  final String wireValue;

  static FleetObservabilityRoutingConfigModeGkehubV1beta fromValue(String value) {
    for (final item in FleetObservabilityRoutingConfigModeGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetObservabilityRoutingConfigModeGkehubV1beta value: $value');
  }
}
