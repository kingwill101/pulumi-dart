// ignore_for_file: unused_element, unnecessary_cast


class EndpointPrivateDnsZoneConfigRecordSet {
  /// The fully qualified domain name to the `private_dns_zone`.
  final String? fqdn;
  /// A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  final List<String>? ipAddresses;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final String? name;
  /// The time to live for each connection to the `private_dns_zone`.
  final int? ttl;
  /// The type of DNS record.
  final String? type;

  /// Creates a new [EndpointPrivateDnsZoneConfigRecordSet].
  /// [fqdn] The fully qualified domain name to the `private_dns_zone`.
  /// [ipAddresses] A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [ttl] The time to live for each connection to the `private_dns_zone`.
  /// [type] The type of DNS record.
  EndpointPrivateDnsZoneConfigRecordSet({
    this.fqdn,
    this.ipAddresses,
    this.name,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
      'name': ?name,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory EndpointPrivateDnsZoneConfigRecordSet.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsZoneConfigRecordSet(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

