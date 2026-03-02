// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneAssetStatus {
  /// Number of active assets.
  final pulumi.Input<int>? activeAssets;
  /// Number of assets that are in process of updating the security policy on attached resources.
  final pulumi.Input<int>? securityPolicyApplyingAssets;
  /// Output only. The time when the zone was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ZoneAssetStatus].
  /// [activeAssets] Number of active assets.
  /// [securityPolicyApplyingAssets] Number of assets that are in process of updating the security policy on attached resources.
  /// [updateTime] Output only. The time when the zone was last updated.
  ZoneAssetStatus({
    this.activeAssets,
    this.securityPolicyApplyingAssets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssets': ?activeAssets,
      'securityPolicyApplyingAssets': ?securityPolicyApplyingAssets,
      'updateTime': ?updateTime,
    };
  }

  factory ZoneAssetStatus.fromMap(Map<String, dynamic> map) {
    return ZoneAssetStatus(
      activeAssets: map['activeAssets'] == null ? null : (map['activeAssets'] as int).input(),
      securityPolicyApplyingAssets: map['securityPolicyApplyingAssets'] == null ? null : (map['securityPolicyApplyingAssets'] as int).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

