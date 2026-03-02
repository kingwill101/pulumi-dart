// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIServiceCondition describes the state of an APIService at a particular point
class APIServiceConditionApiregistrationK8sIoV1beta1 {
  /// Last time the condition transitioned from one status to another.
  final pulumi.Input<String>? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final pulumi.Input<String>? message;
  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final pulumi.Input<String>? reason;
  /// Status is the status of the condition. Can be True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type is the type of the condition.
  final pulumi.Input<String> type;

  /// Creates a new [APIServiceConditionApiregistrationK8sIoV1beta1].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] Unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] Status is the status of the condition. Can be True, False, Unknown.
  /// [type] Type is the type of the condition.
  APIServiceConditionApiregistrationK8sIoV1beta1({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': ?lastTransitionTime,
      'message': ?message,
      'reason': ?reason,
      'status': status,
      'type': type,
    };
  }

  factory APIServiceConditionApiregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return APIServiceConditionApiregistrationK8sIoV1beta1(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

