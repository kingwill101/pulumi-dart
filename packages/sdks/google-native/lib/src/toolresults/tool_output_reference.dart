// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';
import 'test_case_reference.dart';
import 'timestamp.dart';

/// A reference to a ToolExecution output file.
class ToolOutputReference {
  /// The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<Timestamp>? creationTime;

  /// A FileReference to an output file. - In response: always set - In create/update request: always set
  final pulumi.Input<FileReference>? output;

  /// The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<TestCaseReference>? testCase;

  /// Creates a new [ToolOutputReference].
  /// [creationTime] The creation time of the file. - In response: present if set by create/update request - In create/update request: optional
  /// [output] A FileReference to an output file. - In response: always set - In create/update request: always set
  /// [testCase] The test case to which this output file belongs. - In response: present if set by create/update request - In create/update request: optional
  ToolOutputReference({this.creationTime, this.output, this.testCase});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime':
          ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(
            creationTime,
            (value) => value.toMap(),
          ),
      'output':
          ?pulumi.Input.mapOptionalInputValue<
            FileReference,
            Map<String, dynamic>
          >(output, (value) => value.toMap()),
      'testCase':
          ?pulumi.Input.mapOptionalInputValue<
            TestCaseReference,
            Map<String, dynamic>
          >(testCase, (value) => value.toMap()),
    };
  }

  factory ToolOutputReference.fromMap(Map<String, dynamic> map) {
    return ToolOutputReference(
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Timestamp.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      testCase: (() {
        final guardedValue = map['testCase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TestCaseReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
