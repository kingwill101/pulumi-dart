// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatusResponse {
  /// Status code of the upgrade.
  final pulumi.Input<String> code;
  /// Reason for this status.
  final pulumi.Input<String> reason;
  /// Last timestamp the status was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ClusterUpgradeUpgradeStatusResponse].
  /// [code] Status code of the upgrade.
  /// [reason] Reason for this status.
  /// [updateTime] Last timestamp the status was updated.
  ClusterUpgradeUpgradeStatusResponse({
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

  factory ClusterUpgradeUpgradeStatusResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeUpgradeStatusResponse(
      code: (map['code'] as String).input(),
      reason: (map['reason'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

