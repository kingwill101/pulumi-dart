// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A condition represents the status of the secret create and update processes.
class SecretSyncConditionResponse {
  /// LastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed. If that is not known, then using the time when the API field changed is acceptable.
  final pulumi.Input<String> lastTransitionTime;

  /// Message is a human readable message indicating details about the transition. This may be an empty string.
  final pulumi.Input<String> message;

  /// ObservedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final pulumi.Input<double> observedGeneration;

  /// Reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  final pulumi.Input<String> reason;

  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;

  /// Type of condition in CamelCase or in foo.example.com/CamelCase. Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be useful (see .node.status.conditions), the ability to de-conflict is important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
  final pulumi.Input<String> type;

  /// Creates a new [SecretSyncConditionResponse].
  /// [lastTransitionTime] LastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed. If that is not known, then using the time when the API field changed is acceptable.
  /// [message] Message is a human readable message indicating details about the transition. This may be an empty string.
  /// [observedGeneration] ObservedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  /// [reason] Reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of condition in CamelCase or in foo.example.com/CamelCase. Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be useful (see .node.status.conditions), the ability to de-conflict is important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
  SecretSyncConditionResponse({
    required this.lastTransitionTime,
    required this.message,
    required this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastTransitionTime': lastTransitionTime,
      'message': message,
      'observedGeneration': observedGeneration,
      'reason': reason,
      'status': status,
      'type': type,
    };
  }

  factory SecretSyncConditionResponse.fromMap(Map<String, dynamic> map) {
    return SecretSyncConditionResponse(
      lastTransitionTime: pulumi.Input.fromValue(
        map['lastTransitionTime'] as String,
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      observedGeneration: pulumi.Input.fromValue(
        map['observedGeneration'] as double,
      ),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
