// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange {
  /// (Optional)
  final pulumi.Input<String>? ipCidrRange;
  /// (Optional)
  final pulumi.Input<String>? subnetworkRangeName;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange].
  /// [ipCidrRange] (Optional)
  /// [subnetworkRangeName] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange({
    this.ipCidrRange,
    this.subnetworkRangeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ?ipCidrRange,
      'subnetworkRangeName': ?subnetworkRangeName,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange(
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange']! as String).input(),
      subnetworkRangeName: map['subnetworkRangeName'] == null ? null : (map['subnetworkRangeName']! as String).input(),
    );
  }
}

