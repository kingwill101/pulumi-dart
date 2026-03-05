// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alias IP range attached to an instance's network interface.
class AliasIpRangeResponseComputeV1 {
  /// The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  final pulumi.Input<String> ipCidrRange;
  /// The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  final pulumi.Input<String> subnetworkRangeName;

  /// Creates a new [AliasIpRangeResponseComputeV1].
  /// [ipCidrRange] The IP alias ranges to allocate for this interface. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. This range may be a single IP address (such as 10.2.3.4), a netmask (such as /24) or a CIDR-formatted string (such as 10.1.2.0/24).
  /// [subnetworkRangeName] The name of a subnetwork secondary IP range from which to allocate an IP alias range. If not specified, the primary range of the subnetwork is used.
  AliasIpRangeResponseComputeV1({
    required this.ipCidrRange,
    required this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': subnetworkRangeName,
    };
  }

  factory AliasIpRangeResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AliasIpRangeResponseComputeV1(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      subnetworkRangeName: pulumi.Input.fromValue(map['subnetworkRangeName'] as String),
    );
  }
}

