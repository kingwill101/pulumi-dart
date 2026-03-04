// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeGroupNetworkRule {
  /// The action to take when an access attempt to this Elastic SAN Volume Group from this Subnet is made.
  final pulumi.Input<String> action;

  /// The ID of the Subnet from which access to this Elastic SAN Volume Group is allowed.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetVolumeGroupNetworkRule].
  /// [action] The action to take when an access attempt to this Elastic SAN Volume Group from this Subnet is made.
  /// [subnetId] The ID of the Subnet from which access to this Elastic SAN Volume Group is allowed.
  GetVolumeGroupNetworkRule({required this.action, required this.subnetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action, 'subnetId': subnetId};
  }

  factory GetVolumeGroupNetworkRule.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupNetworkRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
