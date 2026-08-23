/// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
enum ClusterAuthorizationModeRedisV1beta1 {
  authModeUnspecified("AUTH_MODE_UNSPECIFIED"),
  authModeIamAuth("AUTH_MODE_IAM_AUTH"),
  authModeDisabled("AUTH_MODE_DISABLED");

  const ClusterAuthorizationModeRedisV1beta1(this.wireValue);
  final String wireValue;

  static ClusterAuthorizationModeRedisV1beta1 fromValue(String value) {
    for (final item in ClusterAuthorizationModeRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAuthorizationModeRedisV1beta1 value: $value');
  }
}
