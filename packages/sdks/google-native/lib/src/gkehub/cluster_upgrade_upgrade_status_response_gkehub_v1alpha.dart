// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatusResponseGkehubV1alpha {
  /// Status code of the upgrade.
  final pulumi.Input<String> code;

  /// Reason for this status.
  final pulumi.Input<String> reason;

  /// Last timestamp the status was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ClusterUpgradeUpgradeStatusResponseGkehubV1alpha].
  /// [code] Status code of the upgrade.
  /// [reason] Reason for this status.
  /// [updateTime] Last timestamp the status was updated.
  ClusterUpgradeUpgradeStatusResponseGkehubV1alpha({
    required this.code,
    required this.reason,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'reason': reason,
      'updateTime': updateTime,
    };
  }

  factory ClusterUpgradeUpgradeStatusResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUpgradeUpgradeStatusResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
