// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceCondition provides a standard mechanism for higher-level status reporting from controller.
class ResourceConditionResponse {
  /// Last time the condition transit from one status to another.
  final pulumi.Input<String> lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String> message;
  /// Machine-readable message indicating details about last transition.
  final pulumi.Input<String> reason;
  /// state of the condition.
  final pulumi.Input<String> state;
  /// Type of the condition. (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  final pulumi.Input<String> type;

  /// Creates a new [ResourceConditionResponse].
  /// [lastTransitionTime] Last time the condition transit from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] Machine-readable message indicating details about last transition.
  /// [state] state of the condition.
  /// [type] Type of the condition. (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady)
  ResourceConditionResponse({
    required this.lastTransitionTime,
    required this.message,
    required this.reason,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'reason': reason,
      'state': state,
      'type': type,
    };
  }

  factory ResourceConditionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceConditionResponse(
      lastTransitionTime: (map['lastTransitionTime'] as String).input(),
      message: (map['message'] as String).input(),
      reason: (map['reason'] as String).input(),
      state: (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

