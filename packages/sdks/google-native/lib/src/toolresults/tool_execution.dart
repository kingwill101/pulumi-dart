// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';
import 'tool_exit_code.dart';
import 'tool_output_reference.dart';

/// An execution of an arbitrary tool. It could be a test runner or a tool copying artifacts or deploying code.
class ToolExecution {
  /// The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  final pulumi.Input<List<String>>? commandLineArguments;
  /// Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  final pulumi.Input<ToolExitCode>? exitCode;
  /// References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final pulumi.Input<List<FileReference>>? toolLogs;
  /// References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final pulumi.Input<List<ToolOutputReference>>? toolOutputs;

  /// Creates a new [ToolExecution].
  /// [commandLineArguments] The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  /// [exitCode] Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  /// [toolLogs] References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  /// [toolOutputs] References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  ToolExecution({
    this.commandLineArguments,
    this.exitCode,
    this.toolLogs,
    this.toolOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLineArguments': ?commandLineArguments,
      'exitCode': ?pulumi.Input.mapOptionalInputValue<ToolExitCode, Map<String, dynamic>>(exitCode, (value) => value.toMap()),
      'toolLogs': ?pulumi.Input.mapOptionalInputValue<List<FileReference>, List<Map<String, dynamic>>>(toolLogs, (value) => pulumi.Input.encodeList<FileReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolOutputs': ?pulumi.Input.mapOptionalInputValue<List<ToolOutputReference>, List<Map<String, dynamic>>>(toolOutputs, (value) => pulumi.Input.encodeList<ToolOutputReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolExecution.fromMap(Map<String, dynamic> map) {
    return ToolExecution(
      commandLineArguments: (() { final guardedValue = map['commandLineArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exitCode: (() { final guardedValue = map['exitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolExitCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolLogs: (() { final guardedValue = map['toolLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileReference>(guardedValue, (value) => FileReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolOutputs: (() { final guardedValue = map['toolOutputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolOutputReference>(guardedValue, (value) => ToolOutputReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

