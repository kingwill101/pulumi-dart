import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. A status for this configuration.
enum DiscoveryConfigStatus implements pulumi.PulumiEnum<String> {
  statusUnspecified("STATUS_UNSPECIFIED"),
  running("RUNNING"),
  paused("PAUSED");

  const DiscoveryConfigStatus(this.wireValue);
  @override
  final String wireValue;

  static DiscoveryConfigStatus fromValue(String value) {
    for (final item in DiscoveryConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryConfigStatus value: $value');
  }
}
