/// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
enum InstanceTransitEncryptionModeRedisV1beta1 {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  serverAuthentication("SERVER_AUTHENTICATION"),
  disabled("DISABLED");

  const InstanceTransitEncryptionModeRedisV1beta1(this.wireValue);
  final String wireValue;

  static InstanceTransitEncryptionModeRedisV1beta1 fromValue(String value) {
    for (final item in InstanceTransitEncryptionModeRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTransitEncryptionModeRedisV1beta1 value: $value');
  }
}

