// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageNetworkInterfaceAliasIpv6Range {
  /// The IPv6 CIDR range represented by this alias IP range.
  final pulumi.Input<String> ipCidrRange;
  /// The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  final pulumi.Input<String?>? subnetworkRangeName;

  /// Creates a new [InstanceFromMachineImageNetworkInterfaceAliasIpv6Range].
  /// [ipCidrRange] The IPv6 CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  const InstanceFromMachineImageNetworkInterfaceAliasIpv6Range({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory InstanceFromMachineImageNetworkInterfaceAliasIpv6Range.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkInterfaceAliasIpv6Range(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      subnetworkRangeName: (() { final guardedValue = map['subnetworkRangeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
