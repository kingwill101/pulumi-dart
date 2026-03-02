// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageNetworkInterfaceAliasIpRange {
  /// The IP CIDR range represented by this alias IP range.
  final pulumi.Input<String> ipCidrRange;
  /// The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  final pulumi.Input<String>? subnetworkRangeName;

  /// Creates a new [InstanceFromMachineImageNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] The IP CIDR range represented by this alias IP range.
  /// [subnetworkRangeName] The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.
  InstanceFromMachineImageNetworkInterfaceAliasIpRange({
    required this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory InstanceFromMachineImageNetworkInterfaceAliasIpRange.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkInterfaceAliasIpRange(
      ipCidrRange: (map['ipCidrRange'] as String).input(),
      subnetworkRangeName: map['subnetworkRangeName'] == null ? null : (map['subnetworkRangeName'] as String).input(),
    );
  }
}

