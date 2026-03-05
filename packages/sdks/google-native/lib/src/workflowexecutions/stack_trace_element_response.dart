// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'position_response.dart';

/// A single stack element (frame) where an error occurred.
class StackTraceElementResponse {
  /// The source position information of the stack trace element.
  final pulumi.Input<PositionResponse> position;
  /// The routine where the error occurred.
  final pulumi.Input<String> routine;
  /// The step the error occurred at.
  final pulumi.Input<String> step;

  /// Creates a new [StackTraceElementResponse].
  /// [position] The source position information of the stack trace element.
  /// [routine] The routine where the error occurred.
  /// [step] The step the error occurred at.
  StackTraceElementResponse({
    required this.position,
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': pulumi.Input.mapInputValue<PositionResponse, Map<String, dynamic>>(position, (value) => value.toMap()),
      'routine': routine,
      'step': step,
    };
  }

  factory StackTraceElementResponse.fromMap(Map<String, dynamic> map) {
    return StackTraceElementResponse(
      position: pulumi.Input.fromValue(PositionResponse.fromMap((map['position']! as Map).cast<String, dynamic>())),
      routine: pulumi.Input.fromValue(map['routine'] as String),
      step: pulumi.Input.fromValue(map['step'] as String),
    );
  }
}

