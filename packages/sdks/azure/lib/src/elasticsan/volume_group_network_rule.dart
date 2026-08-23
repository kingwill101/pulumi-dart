// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupNetworkRule {
  /// The action to take when the Subnet attempts to access this Elastic SAN Volume Group. The only possible value is `Allow`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The ID of the Subnet which should be allowed to access this Elastic SAN Volume Group.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VolumeGroupNetworkRule].
  /// [action] The action to take when the Subnet attempts to access this Elastic SAN Volume Group. The only possible value is `Allow`. Defaults to `Allow`.
  /// [subnetId] The ID of the Subnet which should be allowed to access this Elastic SAN Volume Group.
  const VolumeGroupNetworkRule({
    this.action,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'subnetId': subnetId,
    };
  }

  factory VolumeGroupNetworkRule.fromMap(Map<String, dynamic> map) {
    return VolumeGroupNetworkRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
