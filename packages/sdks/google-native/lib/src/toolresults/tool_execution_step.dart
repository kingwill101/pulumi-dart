// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_execution.dart';

/// Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.
class ToolExecutionStep {
  /// A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<ToolExecution>? toolExecution;

  /// Creates a new [ToolExecutionStep].
  /// [toolExecution] A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  const ToolExecutionStep({
    this.toolExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolExecution': ?pulumi.Input.mapOptionalInputValue<ToolExecution, Map<String, dynamic>>(toolExecution, (value) => value.toMap()),
    };
  }

  factory ToolExecutionStep.fromMap(Map<String, dynamic> map) {
    return ToolExecutionStep(
      toolExecution: (() { final guardedValue = map['toolExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolExecution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

