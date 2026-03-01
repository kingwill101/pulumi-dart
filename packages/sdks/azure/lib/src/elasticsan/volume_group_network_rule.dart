// ignore_for_file: unused_element, unnecessary_cast


class VolumeGroupNetworkRule {
  /// The action to take when the Subnet attempts to access this Elastic SAN Volume Group. The only possible value is `Allow`. Defaults to `Allow`.
  final String? action;
  /// The ID of the Subnet which should be allowed to access this Elastic SAN Volume Group.
  final String subnetId;

  /// Creates a new [VolumeGroupNetworkRule].
  /// [action] The action to take when the Subnet attempts to access this Elastic SAN Volume Group. The only possible value is `Allow`. Defaults to `Allow`.
  /// [subnetId] The ID of the Subnet which should be allowed to access this Elastic SAN Volume Group.
  VolumeGroupNetworkRule({
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
      action: map['action'] == null ? null : map['action'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

