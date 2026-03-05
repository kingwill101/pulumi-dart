// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_execution_response.dart';

/// Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.
class ToolExecutionStepResponse {
  /// A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<ToolExecutionResponse> toolExecution;

  /// Creates a new [ToolExecutionStepResponse].
  /// [toolExecution] A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  ToolExecutionStepResponse({
    required this.toolExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolExecution': pulumi.Input.mapInputValue<ToolExecutionResponse, Map<String, dynamic>>(toolExecution, (value) => value.toMap()),
    };
  }

  factory ToolExecutionStepResponse.fromMap(Map<String, dynamic> map) {
    return ToolExecutionStepResponse(
      toolExecution: pulumi.Input.fromValue(ToolExecutionResponse.fromMap((map['toolExecution']! as Map).cast<String, dynamic>())),
    );
  }
}

