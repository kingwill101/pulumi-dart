// ignore_for_file: unused_element, unnecessary_cast


/// Information about the condition of a component.
class ComponentCondition {
  /// Condition error code for a component. For example, a health check error code.
  final String? error;
  /// Message about the condition for a component. For example, information about a health check.
  final String? message;
  /// Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  final String status;
  /// Type of condition for a component. Valid value: "Healthy"
  final String type;

  /// Creates a new [ComponentCondition].
  /// [error] Condition error code for a component. For example, a health check error code.
  /// [message] Message about the condition for a component. For example, information about a health check.
  /// [status] Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  /// [type] Type of condition for a component. Valid value: "Healthy"
  ComponentCondition({
    this.error,
    this.message,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'message': ?message,
      'status': status,
      'type': type,
    };
  }

  factory ComponentCondition.fromMap(Map<String, dynamic> map) {
    return ComponentCondition(
      error: map['error'] == null ? null : map['error'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

