// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_issue_response.dart';
import 'test_suite_overview_response.dart';
import 'test_timing_response.dart';
import 'tool_execution_response.dart';

/// A step that represents running tests. It accepts ant-junit xml files which will be parsed into structured test results by the service. Xml file paths are updated in order to append more files, however they can't be deleted. Users can also add test results manually by using the test_result field.
class TestExecutionStepResponse {
  /// Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  final pulumi.Input<List<TestIssueResponse>> testIssues;
  /// List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  final pulumi.Input<List<TestSuiteOverviewResponse>> testSuiteOverviews;
  /// The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  final pulumi.Input<TestTimingResponse> testTiming;
  /// Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  final pulumi.Input<ToolExecutionResponse> toolExecution;

  /// Creates a new [TestExecutionStepResponse].
  /// [testIssues] Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  /// [testSuiteOverviews] List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  /// [testTiming] The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  /// [toolExecution] Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  TestExecutionStepResponse({
    required this.testIssues,
    required this.testSuiteOverviews,
    required this.testTiming,
    required this.toolExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testIssues': pulumi.Input.mapInputValue<List<TestIssueResponse>, List<Map<String, dynamic>>>(testIssues, (value) => pulumi.Input.encodeList<TestIssueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testSuiteOverviews': pulumi.Input.mapInputValue<List<TestSuiteOverviewResponse>, List<Map<String, dynamic>>>(testSuiteOverviews, (value) => pulumi.Input.encodeList<TestSuiteOverviewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testTiming': pulumi.Input.mapInputValue<TestTimingResponse, Map<String, dynamic>>(testTiming, (value) => value.toMap()),
      'toolExecution': pulumi.Input.mapInputValue<ToolExecutionResponse, Map<String, dynamic>>(toolExecution, (value) => value.toMap()),
    };
  }

  factory TestExecutionStepResponse.fromMap(Map<String, dynamic> map) {
    return TestExecutionStepResponse(
      testIssues: pulumi.Input.fromValue(pulumi.Input.decodeList<TestIssueResponse>(map['testIssues']!, (value) => TestIssueResponse.fromMap((value as Map).cast<String, dynamic>()))),
      testSuiteOverviews: pulumi.Input.fromValue(pulumi.Input.decodeList<TestSuiteOverviewResponse>(map['testSuiteOverviews']!, (value) => TestSuiteOverviewResponse.fromMap((value as Map).cast<String, dynamic>()))),
      testTiming: pulumi.Input.fromValue(TestTimingResponse.fromMap((map['testTiming']! as Map).cast<String, dynamic>())),
      toolExecution: pulumi.Input.fromValue(ToolExecutionResponse.fromMap((map['toolExecution']! as Map).cast<String, dynamic>())),
    );
  }
}

