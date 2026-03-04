// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';
import 'tool_exit_code_response.dart';
import 'tool_output_reference_response.dart';

/// An execution of an arbitrary tool. It could be a test runner or a tool copying artifacts or deploying code.
class ToolExecutionResponse {
  /// The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  final pulumi.Input<List<String>> commandLineArguments;

  /// Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  final pulumi.Input<ToolExitCodeResponse> exitCode;

  /// References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final pulumi.Input<List<FileReferenceResponse>> toolLogs;

  /// References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  final pulumi.Input<List<ToolOutputReferenceResponse>> toolOutputs;

  /// Creates a new [ToolExecutionResponse].
  /// [commandLineArguments] The full tokenized command line including the program name (equivalent to argv in a C program). - In response: present if set by create request - In create request: optional - In update request: never set
  /// [exitCode] Tool execution exit code. This field will be set once the tool has exited. - In response: present if set by create/update request - In create request: optional - In update request: optional, a FAILED_PRECONDITION error will be returned if an exit_code is already set.
  /// [toolLogs] References to any plain text logs output the tool execution. This field can be set before the tool has exited in order to be able to have access to a live view of the logs while the tool is running. The maximum allowed number of tool logs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  /// [toolOutputs] References to opaque files of any format output by the tool execution. The maximum allowed number of tool outputs per step is 1000. - In response: present if set by create/update request - In create request: optional - In update request: optional, any value provided will be appended to the existing list
  ToolExecutionResponse({
    required this.commandLineArguments,
    required this.exitCode,
    required this.toolLogs,
    required this.toolOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLineArguments': commandLineArguments,
      'exitCode':
          pulumi.Input.mapInputValue<
            ToolExitCodeResponse,
            Map<String, dynamic>
          >(exitCode, (value) => value.toMap()),
      'toolLogs':
          pulumi.Input.mapInputValue<
            List<FileReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            toolLogs,
            (value) =>
                pulumi.Input.encodeList<
                  FileReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'toolOutputs':
          pulumi.Input.mapInputValue<
            List<ToolOutputReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            toolOutputs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolOutputReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ToolExecutionResponse.fromMap(Map<String, dynamic> map) {
    return ToolExecutionResponse(
      commandLineArguments: pulumi.Input.fromValue(
        (map['commandLineArguments'] as List).cast<String>(),
      ),
      exitCode: pulumi.Input.fromValue(
        ToolExitCodeResponse.fromMap(
          (map['exitCode']! as Map).cast<String, dynamic>(),
        ),
      ),
      toolLogs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FileReferenceResponse>(
          map['toolLogs']!,
          (value) => FileReferenceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      toolOutputs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ToolOutputReferenceResponse>(
          map['toolOutputs']!,
          (value) => ToolOutputReferenceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
