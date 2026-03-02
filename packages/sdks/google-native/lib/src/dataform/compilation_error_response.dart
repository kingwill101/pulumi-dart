// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_response.dart';

/// An error encountered when attempting to compile a Dataform project.
class CompilationErrorResponse {
  /// The identifier of the action where this error occurred, if available.
  final pulumi.Input<TargetResponse> actionTarget;
  /// The error's top level message.
  final pulumi.Input<String> message;
  /// The path of the file where this error occurred, if available, relative to the project root.
  final pulumi.Input<String> path;
  /// The error's full stack trace.
  final pulumi.Input<String> stack;

  /// Creates a new [CompilationErrorResponse].
  /// [actionTarget] The identifier of the action where this error occurred, if available.
  /// [message] The error's top level message.
  /// [path] The path of the file where this error occurred, if available, relative to the project root.
  /// [stack] The error's full stack trace.
  CompilationErrorResponse({
    required this.actionTarget,
    required this.message,
    required this.path,
    required this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionTarget': pulumi.Input.mapInputValue<TargetResponse, Map<String, dynamic>>(actionTarget, (value) => value.toMap()),
      'message': message,
      'path': path,
      'stack': stack,
    };
  }

  factory CompilationErrorResponse.fromMap(Map<String, dynamic> map) {
    return CompilationErrorResponse(
      actionTarget: (TargetResponse.fromMap((map['actionTarget'] as Map).cast<String, dynamic>())).input(),
      message: (map['message'] as String).input(),
      path: (map['path'] as String).input(),
      stack: (map['stack'] as String).input(),
    );
  }
}

