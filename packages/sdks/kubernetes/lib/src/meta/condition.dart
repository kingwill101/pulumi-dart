// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Condition contains details for one aspect of the current state of this API Resource.
class Condition {
  /// lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  final pulumi.Input<String> lastTransitionTime;
  /// message is a human readable message indicating details about the transition. This may be an empty string.
  final pulumi.Input<String> message;
  /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final pulumi.Input<int>? observedGeneration;
  /// reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  final pulumi.Input<String> reason;
  /// status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// type of condition in CamelCase or in foo.example.com/CamelCase.
  final pulumi.Input<String> type;

  /// Creates a new [Condition].
  /// [lastTransitionTime] lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  /// [message] message is a human readable message indicating details about the transition. This may be an empty string.
  /// [observedGeneration] observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  /// [status] status of the condition, one of True, False, Unknown.
  /// [type] type of condition in CamelCase or in foo.example.com/CamelCase.
  Condition({
    required this.lastTransitionTime,
    required this.message,
    this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'observedGeneration': ?observedGeneration,
      'reason': reason,
      'status': status,
      'type': type,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      lastTransitionTime: pulumi.Input.fromValue(map['lastTransitionTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

