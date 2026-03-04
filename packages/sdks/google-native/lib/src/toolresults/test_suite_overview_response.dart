// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';
import 'file_reference_response.dart';

/// A summary of a test suite result either parsed from XML or uploaded directly by a user. Note: the API related comments are for StepService only. This message is also being used in ExecutionService in a read only mode for the corresponding step.
class TestSuiteOverviewResponse {
  /// Elapsed time of test suite.
  final pulumi.Input<DurationResponse> elapsedTime;

  /// Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int> errorCount;

  /// Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  final pulumi.Input<int> failureCount;

  /// Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  final pulumi.Input<int> flakyCount;

  /// The name of the test suite. - In create/response: always set - In update request: never
  final pulumi.Input<String> name;

  /// Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int> skippedCount;

  /// Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int> totalCount;

  /// If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  final pulumi.Input<FileReferenceResponse> xmlSource;

  /// Creates a new [TestSuiteOverviewResponse].
  /// [elapsedTime] Elapsed time of test suite.
  /// [errorCount] Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [failureCount] Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  /// [flakyCount] Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  /// [name] The name of the test suite. - In create/response: always set - In update request: never
  /// [skippedCount] Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [totalCount] Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [xmlSource] If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  TestSuiteOverviewResponse({
    required this.elapsedTime,
    required this.errorCount,
    required this.failureCount,
    required this.flakyCount,
    required this.name,
    required this.skippedCount,
    required this.totalCount,
    required this.xmlSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTime':
          pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(
            elapsedTime,
            (value) => value.toMap(),
          ),
      'errorCount': errorCount,
      'failureCount': failureCount,
      'flakyCount': flakyCount,
      'name': name,
      'skippedCount': skippedCount,
      'totalCount': totalCount,
      'xmlSource':
          pulumi.Input.mapInputValue<
            FileReferenceResponse,
            Map<String, dynamic>
          >(xmlSource, (value) => value.toMap()),
    };
  }

  factory TestSuiteOverviewResponse.fromMap(Map<String, dynamic> map) {
    return TestSuiteOverviewResponse(
      elapsedTime: pulumi.Input.fromValue(
        DurationResponse.fromMap(
          (map['elapsedTime']! as Map).cast<String, dynamic>(),
        ),
      ),
      errorCount: pulumi.Input.fromValue(map['errorCount'] as int),
      failureCount: pulumi.Input.fromValue(map['failureCount'] as int),
      flakyCount: pulumi.Input.fromValue(map['flakyCount'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      skippedCount: pulumi.Input.fromValue(map['skippedCount'] as int),
      totalCount: pulumi.Input.fromValue(map['totalCount'] as int),
      xmlSource: pulumi.Input.fromValue(
        FileReferenceResponse.fromMap(
          (map['xmlSource']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
