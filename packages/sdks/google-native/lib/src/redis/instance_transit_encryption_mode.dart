import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
enum InstanceTransitEncryptionMode implements pulumi.PulumiEnum<String> {
  transitEncryptionModeUnspecified("TRANSIT_ENCRYPTION_MODE_UNSPECIFIED"),
  serverAuthentication("SERVER_AUTHENTICATION"),
  disabled("DISABLED");

  const InstanceTransitEncryptionMode(this.wireValue);
  @override
  final String wireValue;

  static InstanceTransitEncryptionMode fromValue(String value) {
    for (final item in InstanceTransitEncryptionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTransitEncryptionMode value: $value');
  }
}
