// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_entity_response.dart';

/// Represents the workflow health.
class WorkflowHealthResponse {
  /// Gets or sets the workflow error.
  final pulumi.Input<ErrorEntityResponse>? error;
  /// Gets or sets the workflow health state.
  final pulumi.Input<String> state;

  /// Creates a new [WorkflowHealthResponse].
  /// [error] Gets or sets the workflow error.
  /// [state] Gets or sets the workflow health state.
  const WorkflowHealthResponse({
    this.error,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorEntityResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'state': state,
    };
  }

  factory WorkflowHealthResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowHealthResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

