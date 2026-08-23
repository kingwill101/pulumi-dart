/// The allowed type DNS record types for this profile.
enum AllowedEndpointRecordType {
  domainName("DomainName"),
  iPv4Address("IPv4Address"),
  iPv6Address("IPv6Address"),
  any("Any");

  const AllowedEndpointRecordType(this.wireValue);
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
