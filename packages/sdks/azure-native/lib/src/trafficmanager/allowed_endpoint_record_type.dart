import 'package:pulumi/pulumi.dart' as pulumi;

/// The allowed type DNS record types for this profile.
enum AllowedEndpointRecordType implements pulumi.PulumiEnum<String> {
  domainName("DomainName"),
  iPv4Address("IPv4Address"),
  iPv6Address("IPv6Address"),
  any("Any");

  const AllowedEndpointRecordType(this.wireValue);
  @override
  final String wireValue;

  static AllowedEndpointRecordType fromValue(String value) {
    for (final item in AllowedEndpointRecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedEndpointRecordType value: $value');
  }
}
