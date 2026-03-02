// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network Profile
class VirtualNetworkProfile {
  /// Subnet ID used for computes in workspace
  final pulumi.Input<String>? computeSubnetId;

  /// Creates a new [VirtualNetworkProfile].
  /// [computeSubnetId] Subnet ID used for computes in workspace
  VirtualNetworkProfile({
    this.computeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeSubnetId': ?computeSubnetId,
    };
  }

  factory VirtualNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfile(
      computeSubnetId: map['computeSubnetId'] == null ? null : (map['computeSubnetId'] as String).input(),
    );
  }
}

