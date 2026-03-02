// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range.
  final pulumi.Input<String> ipCidrRange;
  /// The subnetwork secondary range name specifying
  /// the secondary range from which to allocate the IP CIDR range for this alias IP
  /// range.
  final pulumi.Input<String> subnetworkRangeName;

  /// Creates a new [GetInstanceNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying
  GetInstanceNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    required this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': subnetworkRangeName,
    };
  }

  factory GetInstanceNetworkInterfaceAliasIpRange.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceAliasIpRange(
      ipCidrRange: (map['ipCidrRange'] as String).input(),
      subnetworkRangeName: (map['subnetworkRangeName'] as String).input(),
    );
  }
}

