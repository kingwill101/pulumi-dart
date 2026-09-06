// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network Profile
class VirtualNetworkProfileResponse {
  /// Subnet ID used for computes in workspace
  final pulumi.Input<String?>? computeSubnetId;

  /// Creates a new [VirtualNetworkProfileResponse].
  /// [computeSubnetId] Subnet ID used for computes in workspace
  const VirtualNetworkProfileResponse({
    this.computeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeSubnetId': ?computeSubnetId,
    };
  }

  factory VirtualNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfileResponse(
      computeSubnetId: (() { final guardedValue = map['computeSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
