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
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetworkRangeName: (() { final guardedValue = map['subnetworkRangeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

