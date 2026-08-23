// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AccessBridgeEndpoint describes a single advertised service endpoint.
class AccessBridgeEndpointResponse {
  /// The fully qualified domain name used to describe the certificate name for the endpoint.
  final pulumi.Input<String> fqdn;
  /// The IPv4 address associated with the endpoint.
  final pulumi.Input<String> ipv4Address;
  /// The IPv6 address associated with the endpoint.
  final pulumi.Input<String> ipv6Address;
  /// The name that identifies the type of endpoint (for example VIP or host).
  final pulumi.Input<String> name;

  /// Creates a new [AccessBridgeEndpointResponse].
  /// [fqdn] The fully qualified domain name used to describe the certificate name for the endpoint.
  /// [ipv4Address] The IPv4 address associated with the endpoint.
  /// [ipv6Address] The IPv6 address associated with the endpoint.
  /// [name] The name that identifies the type of endpoint (for example VIP or host).
  const AccessBridgeEndpointResponse({
    required this.fqdn,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'name': name,
    };
  }

  factory AccessBridgeEndpointResponse.fromMap(Map<String, dynamic> map) {
    return AccessBridgeEndpointResponse(
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
