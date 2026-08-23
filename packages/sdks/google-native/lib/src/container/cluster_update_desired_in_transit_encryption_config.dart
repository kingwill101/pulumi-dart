/// Specify the details of in-transit encryption.
enum ClusterUpdateDesiredInTransitEncryptionConfig {
  inTransitEncryptionConfigUnspecified("IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED"),
  inTransitEncryptionDisabled("IN_TRANSIT_ENCRYPTION_DISABLED"),
  inTransitEncryptionInterNodeTransparent("IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT");

  const ClusterUpdateDesiredInTransitEncryptionConfig(this.wireValue);
  final String wireValue;

  static ClusterUpdateDesiredInTransitEncryptionConfig fromValue(String value) {
    for (final item in ClusterUpdateDesiredInTransitEncryptionConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateDesiredInTransitEncryptionConfig value: $value');
  }
}
