import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
enum ClusterTransitEncryptionMode implements pulumi.PulumiEnum<String> {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  transitEncryptionModeDisabled("TRANSIT_ENCRYPTION_MODE_DISABLED"),
  transitEncryptionModeServerAuthentication("TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION");

  const ClusterTransitEncryptionMode(this.wireValue);
  @override
  final String wireValue;

  static ClusterTransitEncryptionMode fromValue(String value) {
    for (final item in ClusterTransitEncryptionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterTransitEncryptionMode value: $value');
  }
}
