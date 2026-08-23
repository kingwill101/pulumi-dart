// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointCustomDnsConfig {
  /// The fully qualified domain name to the `privateDnsZone`.
  final pulumi.Input<String>? fqdn;
  /// A list of all IP Addresses that map to the `privateDnsZone` fqdn.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [EndpointCustomDnsConfig].
  /// [fqdn] The fully qualified domain name to the `privateDnsZone`.
  /// [ipAddresses] A list of all IP Addresses that map to the `privateDnsZone` fqdn.
  const EndpointCustomDnsConfig({
    this.fqdn,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory EndpointCustomDnsConfig.fromMap(Map<String, dynamic> map) {
    return EndpointCustomDnsConfig(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
