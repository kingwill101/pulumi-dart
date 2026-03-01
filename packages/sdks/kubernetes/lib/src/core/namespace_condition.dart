// ignore_for_file: unused_element, unnecessary_cast


/// NamespaceCondition contains details about state of namespace.
class NamespaceCondition {
  /// Last time the condition transitioned from one status to another.
  final String? lastTransitionTime;
  /// Human-readable message indicating details about last transition.
  final String? message;
  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;
  /// Status of the condition, one of True, False, Unknown.
  final String status;
  /// Type of namespace controller condition.
  final String type;

  /// Creates a new [NamespaceCondition].
  /// [lastTransitionTime] Last time the condition transitioned from one status to another.
  /// [message] Human-readable message indicating details about last transition.
  /// [reason] Unique, one-word, CamelCase reason for the condition's last transition.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of namespace controller condition.
  NamespaceCondition({
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

  factory NamespaceCondition.fromMap(Map<String, dynamic> map) {
    return NamespaceCondition(
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

