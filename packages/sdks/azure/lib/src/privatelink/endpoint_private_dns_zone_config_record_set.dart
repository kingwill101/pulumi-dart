// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointPrivateDnsZoneConfigRecordSet {
  /// The fully qualified domain name to the `private_dns_zone`.
  final pulumi.Input<String>? fqdn;
  /// A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  final pulumi.Input<List<String>>? ipAddresses;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The time to live for each connection to the `private_dns_zone`.
  final pulumi.Input<int>? ttl;
  /// The type of DNS record.
  final pulumi.Input<String>? type;

  /// Creates a new [EndpointPrivateDnsZoneConfigRecordSet].
  /// [fqdn] The fully qualified domain name to the `private_dns_zone`.
  /// [ipAddresses] A list of all IP Addresses that map to the `private_dns_zone` fqdn.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  /// [ttl] The time to live for each connection to the `private_dns_zone`.
  /// [type] The type of DNS record.
  const EndpointPrivateDnsZoneConfigRecordSet({
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
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

