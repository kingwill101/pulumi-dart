// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AccessBridgeSecurityRule captures an individual access rule enforced by the bridge.
class AccessBridgeSecurityRuleResponse {
  /// The user provided value describing this rule.
  final pulumi.Input<String>? description;
  /// The direction of allowed network traffic based on the rule.
  final pulumi.Input<String> direction;
  /// The set of IPv4 addresses permitted as the source or destination of the security rule. For as single address, utilize a /32 (CIDR notation). One or both Ipv4Addresses and Ipv6Addresses must be specified. Example formats: 10.10.10.10-10.10.10.20 or 10.10.10.10/24.
  final pulumi.Input<List<String>>? ipv4Addresses;
  /// The set of IPv6 addresses permitted as the source or destination of the security rule. For as single address, utilize a /128 (CIDR notation). One or both Ipv4Addresses and Ipv6Addresses must be specified. Example formats: 2001:db8:abcd::1-2001:db8:abcd::ff or 2001:db8:abcd::1/64.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// The source or destination port or port range. Example 24562 or 24562-24570.
  final pulumi.Input<String> port;

  /// Creates a new [AccessBridgeSecurityRuleResponse].
  /// [description] The user provided value describing this rule.
  /// [direction] The direction of allowed network traffic based on the rule.
  /// [ipv4Addresses] The set of IPv4 addresses permitted as the source or destination of the security rule. For as single address, utilize a /32 (CIDR notation). One or both Ipv4Addresses and Ipv6Addresses must be specified. Example formats: 10.10.10.10-10.10.10.20 or 10.10.10.10/24.
  /// [ipv6Addresses] The set of IPv6 addresses permitted as the source or destination of the security rule. For as single address, utilize a /128 (CIDR notation). One or both Ipv4Addresses and Ipv6Addresses must be specified. Example formats: 2001:db8:abcd::1-2001:db8:abcd::ff or 2001:db8:abcd::1/64.
  /// [port] The source or destination port or port range. Example 24562 or 24562-24570.
  const AccessBridgeSecurityRuleResponse({
    this.description,
    required this.direction,
    this.ipv4Addresses,
    this.ipv6Addresses,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'direction': direction,
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
      'port': port,
    };
  }

  factory AccessBridgeSecurityRuleResponse.fromMap(Map<String, dynamic> map) {
    return AccessBridgeSecurityRuleResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      port: pulumi.Input.fromValue(map['port'] as String),
    );
  }
}
