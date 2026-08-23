// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange {
  /// A description of this ip range.
  final pulumi.Input<String> description;
  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32.
  final pulumi.Input<String> value;

  /// Creates a new [GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange].
  /// [description] A description of this ip range.
  /// [value] IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes should be properly truncated. For example, 1.2.3.4/24 should be truncated to 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 should be truncated to 2001:db8::/32.
  const GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange({
    required this.description,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'value': value,
    };
  }

  factory GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange(
      description: pulumi.Input.fromValue(map['description'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
