// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_issue.dart';
import 'test_suite_overview.dart';
import 'test_timing.dart';
import 'tool_execution.dart';

/// A step that represents running tests. It accepts ant-junit xml files which will be parsed into structured test results by the service. Xml file paths are updated in order to append more files, however they can't be deleted. Users can also add test results manually by using the test_result field.
class TestExecutionStep {
  /// Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  final pulumi.Input<List<TestIssue>>? testIssues;
  /// List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  final pulumi.Input<List<TestSuiteOverview>>? testSuiteOverviews;
  /// The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  final pulumi.Input<TestTiming>? testTiming;
  /// Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  final pulumi.Input<ToolExecution>? toolExecution;

  /// Creates a new [TestExecutionStep].
  /// [testIssues] Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  /// [testSuiteOverviews] List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  /// [testTiming] The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  /// [toolExecution] Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  const TestExecutionStep({
    this.testIssues,
    this.testSuiteOverviews,
    this.testTiming,
    this.toolExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testIssues': ?pulumi.Input.mapOptionalInputValue<List<TestIssue>, List<Map<String, dynamic>>>(testIssues, (value) => pulumi.Input.encodeList<TestIssue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testSuiteOverviews': ?pulumi.Input.mapOptionalInputValue<List<TestSuiteOverview>, List<Map<String, dynamic>>>(testSuiteOverviews, (value) => pulumi.Input.encodeList<TestSuiteOverview, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testTiming': ?pulumi.Input.mapOptionalInputValue<TestTiming, Map<String, dynamic>>(testTiming, (value) => value.toMap()),
      'toolExecution': ?pulumi.Input.mapOptionalInputValue<ToolExecution, Map<String, dynamic>>(toolExecution, (value) => value.toMap()),
    };
  }

  factory TestExecutionStep.fromMap(Map<String, dynamic> map) {
    return TestExecutionStep(
      testIssues: (() { final guardedValue = map['testIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TestIssue>(guardedValue, (value) => TestIssue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testSuiteOverviews: (() { final guardedValue = map['testSuiteOverviews']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TestSuiteOverview>(guardedValue, (value) => TestSuiteOverview.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testTiming: (() { final guardedValue = map['testTiming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestTiming.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolExecution: (() { final guardedValue = map['toolExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolExecution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

