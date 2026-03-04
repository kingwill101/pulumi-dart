// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range. This IP CIDR range
  /// must belong to the specified subnetwork and cannot contain IP addresses reserved by
  /// system or used by other network interfaces. At the time of writing only a
  /// netmask (e.g. /24) may be supplied, with a CIDR format resulting in an API
  /// error.
  final pulumi.Input<String> ipCidrRange;

  /// The subnetwork secondary range name specifying
  /// the secondary range from which to allocate the IP CIDR range for this alias IP
  /// range. If left unspecified, the primary range of the subnetwork will be used.
  final pulumi.Input<String> subnetworkRangeName;

  /// Creates a new [GetRegionInstanceTemplateNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range. This IP CIDR range
  /// [subnetworkRangeName] The subnetwork secondary range name specifying
  GetRegionInstanceTemplateNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    required this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': subnetworkRangeName,
    };
  }

  factory GetRegionInstanceTemplateNetworkInterfaceAliasIpRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateNetworkInterfaceAliasIpRange(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      subnetworkRangeName: pulumi.Input.fromValue(
        map['subnetworkRangeName'] as String,
      ),
    );
  }
}
