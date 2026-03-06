// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';
import 'test_case_reference_response.dart';
import 'timestamp_response.dart';

/// A reference to a ToolExecution output file.
class ToolOutputReferenceResponse {
  /// The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<TimestampResponse> creationTime;
  /// A FileReference to an output file. - In response: always set - In create/update request: always set
  final pulumi.Input<FileReferenceResponse> output;
  /// The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<TestCaseReferenceResponse> testCase;

  /// Creates a new [ToolOutputReferenceResponse].
  /// [creationTime] The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  /// [output] A FileReference to an output file. - In response: always set - In create/update request: always set
  /// [testCase] The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  const ToolOutputReferenceResponse({
    required this.creationTime,
    required this.output,
    required this.testCase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': pulumi.Input.mapInputValue<TimestampResponse, Map<String, dynamic>>(creationTime, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'testCase': pulumi.Input.mapInputValue<TestCaseReferenceResponse, Map<String, dynamic>>(testCase, (value) => value.toMap()),
    };
  }

  factory ToolOutputReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ToolOutputReferenceResponse(
      creationTime: pulumi.Input.fromValue(TimestampResponse.fromMap((map['creationTime']! as Map).cast<String, dynamic>())),
      output: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['output']! as Map).cast<String, dynamic>())),
      testCase: pulumi.Input.fromValue(TestCaseReferenceResponse.fromMap((map['testCase']! as Map).cast<String, dynamic>())),
    );
  }
}

