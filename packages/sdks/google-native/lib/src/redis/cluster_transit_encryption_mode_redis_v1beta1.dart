/// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
enum ClusterTransitEncryptionModeRedisV1beta1 {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  transitEncryptionModeDisabled("TRANSIT_ENCRYPTION_MODE_DISABLED"),
  transitEncryptionModeServerAuthentication(
    "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION",
  );

  const ClusterTransitEncryptionModeRedisV1beta1(this.wireValue);
  final String wireValue;

  static ClusterTransitEncryptionModeRedisV1beta1 fromValue(String value) {
    for (final item in ClusterTransitEncryptionModeRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClusterTransitEncryptionModeRedisV1beta1 value: $value',
    );
  }
}
