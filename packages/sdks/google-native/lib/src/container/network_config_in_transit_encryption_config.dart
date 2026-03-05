/// Specify the details of in-transit encryption.
enum NetworkConfigInTransitEncryptionConfig {
  inTransitEncryptionConfigUnspecified("IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED"),
  inTransitEncryptionDisabled("IN_TRANSIT_ENCRYPTION_DISABLED"),
  inTransitEncryptionInterNodeTransparent("IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT");

  const NetworkConfigInTransitEncryptionConfig(this.wireValue);
  final String wireValue;

  static NetworkConfigInTransitEncryptionConfig fromValue(String value) {
    for (final item in NetworkConfigInTransitEncryptionConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigInTransitEncryptionConfig value: $value');
  }
}

