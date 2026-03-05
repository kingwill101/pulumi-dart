// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the condition of a component.
class ComponentConditionPatch {
  /// Condition error code for a component. For example, a health check error code.
  final pulumi.Input<String>? error;
  /// Message about the condition for a component. For example, information about a health check.
  final pulumi.Input<String>? message;
  /// Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  final pulumi.Input<String>? status;
  /// Type of condition for a component. Valid value: "Healthy"
  final pulumi.Input<String>? type;

  /// Creates a new [ComponentConditionPatch].
  /// [error] Condition error code for a component. For example, a health check error code.
  /// [message] Message about the condition for a component. For example, information about a health check.
  /// [status] Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  /// [type] Type of condition for a component. Valid value: "Healthy"
  ComponentConditionPatch({
    this.error,
    this.message,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'message': ?message,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ComponentConditionPatch.fromMap(Map<String, dynamic> map) {
    return ComponentConditionPatch(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

