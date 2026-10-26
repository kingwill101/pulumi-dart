import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. A status for this configuration.
enum OrganizationDiscoveryConfigStatus implements pulumi.PulumiEnum<String> {
  statusUnspecified("STATUS_UNSPECIFIED"),
  running("RUNNING"),
  paused("PAUSED");

  const OrganizationDiscoveryConfigStatus(this.wireValue);
  @override
  final String wireValue;

  static OrganizationDiscoveryConfigStatus fromValue(String value) {
    for (final item in OrganizationDiscoveryConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationDiscoveryConfigStatus value: $value');
  }
}
