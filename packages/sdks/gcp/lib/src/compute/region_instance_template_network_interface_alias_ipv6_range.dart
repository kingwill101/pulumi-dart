// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateNetworkInterfaceAliasIpv6Range {
  /// The IP CIDR range represented by this alias IPv6 range. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. At the time of writing only a netmask (e.g. /96) may be supplied, with a CIDR format resulting in an API error.
  final pulumi.Input<String> ipCidrRange;
  /// The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IPv6 range. If left unspecified, the primary range of the subnetwork will be used.
  final pulumi.Input<String>? subnetworkRangeName;

  /// Creates a new [RegionInstanceTemplateNetworkInterfaceAliasIpv6Range].
  /// [ipCidrRange] The IP CIDR range represented by this alias IPv6 range. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. At the time of writing only a netmask (e.g. /96) may be supplied, with a CIDR format resulting in an API error.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IPv6 range. If left unspecified, the primary range of the subnetwork will be used.
  const RegionInstanceTemplateNetworkInterfaceAliasIpv6Range({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory RegionInstanceTemplateNetworkInterfaceAliasIpv6Range.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterfaceAliasIpv6Range(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      subnetworkRangeName: (() { final guardedValue = map['subnetworkRangeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
