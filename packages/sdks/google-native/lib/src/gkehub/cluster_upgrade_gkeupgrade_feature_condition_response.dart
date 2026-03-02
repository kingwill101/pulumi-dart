// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKEUpgradeFeatureCondition describes the condition of the feature for GKE clusters at a certain point of time.
class ClusterUpgradeGKEUpgradeFeatureConditionResponse {
  /// Reason why the feature is in this status.
  final pulumi.Input<String> reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type of the condition, for example, "ready".
  final pulumi.Input<String> type;
  /// Last timestamp the condition was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ClusterUpgradeGKEUpgradeFeatureConditionResponse].
  /// [reason] Reason why the feature is in this status.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of the condition, for example, "ready".
  /// [updateTime] Last timestamp the condition was updated.
  ClusterUpgradeGKEUpgradeFeatureConditionResponse({
    required this.reason,
    required this.status,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'status': status,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory ClusterUpgradeGKEUpgradeFeatureConditionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeFeatureConditionResponse(
      reason: (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

