// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkInterfaceAliasIpv6Range {
  /// The IP CIDR range represented by this alias IP range.
  final pulumi.Input<String> ipCidrRange;
  /// The subnetwork secondary range name specifying
  /// the secondary range from which to allocate the IP CIDR range for this alias IP
  /// range.
  final pulumi.Input<String> subnetworkRangeName;

  /// Creates a new [GetInstanceNetworkInterfaceAliasIpv6Range].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying
  const GetInstanceNetworkInterfaceAliasIpv6Range({
    required this.ipCidrRange,
    required this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': subnetworkRangeName,
    };
  }

  factory GetInstanceNetworkInterfaceAliasIpv6Range.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceAliasIpv6Range(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      subnetworkRangeName: pulumi.Input.fromValue(map['subnetworkRangeName'] as String),
    );
  }
}
