// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allowed IP range with user-provided description.
class AllowedIpRangeResponse {
  /// Optional. User-provided description. It must contain at most 300 characters.
  final pulumi.Input<String> description;
  /// IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: `192.168.1.1` or `192.168.0.0/16` or `2001:db8::/32` or `2001:0db8:0000:0042:0000:8a2e:0370:7334`. IP range prefixes should be properly truncated. For example, `1.2.3.4/24` should be truncated to `1.2.3.0/24`. Similarly, for IPv6, `2001:db8::1/32` should be truncated to `2001:db8::/32`.
  final pulumi.Input<String> value;

  /// Creates a new [AllowedIpRangeResponse].
  /// [description] Optional. User-provided description. It must contain at most 300 characters.
  /// [value] IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: `192.168.1.1` or `192.168.0.0/16` or `2001:db8::/32` or `2001:0db8:0000:0042:0000:8a2e:0370:7334`. IP range prefixes should be properly truncated. For example, `1.2.3.4/24` should be truncated to `1.2.3.0/24`. Similarly, for IPv6, `2001:db8::1/32` should be truncated to `2001:db8::/32`.
  const AllowedIpRangeResponse({
    required this.description,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'value': value,
    };
  }

  factory AllowedIpRangeResponse.fromMap(Map<String, dynamic> map) {
    return AllowedIpRangeResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

