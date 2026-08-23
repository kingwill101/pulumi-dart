/// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
enum ClusterAuthorizationMode {
  authModeUnspecified("AUTH_MODE_UNSPECIFIED"),
  authModeIamAuth("AUTH_MODE_IAM_AUTH"),
  authModeDisabled("AUTH_MODE_DISABLED");

  const ClusterAuthorizationMode(this.wireValue);
  final String wireValue;

  static ClusterAuthorizationMode fromValue(String value) {
    for (final item in ClusterAuthorizationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterAuthorizationMode value: $value');
  }
}
