// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LakeAssetStatus {
  /// Number of active assets.
  final pulumi.Input<int>? activeAssets;
  /// Number of assets that are in process of updating the security policy on attached resources.
  final pulumi.Input<int>? securityPolicyApplyingAssets;
  /// Output only. The time when the lake was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LakeAssetStatus].
  /// [activeAssets] Number of active assets.
  /// [securityPolicyApplyingAssets] Number of assets that are in process of updating the security policy on attached resources.
  /// [updateTime] Output only. The time when the lake was last updated.
  const LakeAssetStatus({
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

  factory LakeAssetStatus.fromMap(Map<String, dynamic> map) {
    return LakeAssetStatus(
      activeAssets: (() { final guardedValue = map['activeAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityPolicyApplyingAssets: (() { final guardedValue = map['securityPolicyApplyingAssets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

