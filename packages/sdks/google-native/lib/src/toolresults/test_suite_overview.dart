// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'file_reference.dart';

/// A summary of a test suite result either parsed from XML or uploaded directly by a user. Note: the API related comments are for StepService only. This message is also being used in ExecutionService in a read only mode for the corresponding step.
class TestSuiteOverview {
  /// Elapsed time of test suite.
  final pulumi.Input<Duration>? elapsedTime;
  /// Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int>? errorCount;
  /// Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  final pulumi.Input<int>? failureCount;
  /// Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  final pulumi.Input<int>? flakyCount;
  /// The name of the test suite. - In create/response: always set - In update request: never
  final pulumi.Input<String>? name;
  /// Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int>? skippedCount;
  /// Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final pulumi.Input<int>? totalCount;
  /// If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  final pulumi.Input<FileReference>? xmlSource;

  /// Creates a new [TestSuiteOverview].
  /// [elapsedTime] Elapsed time of test suite.
  /// [errorCount] Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [failureCount] Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  /// [flakyCount] Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  /// [name] The name of the test suite. - In create/response: always set - In update request: never
  /// [skippedCount] Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [totalCount] Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [xmlSource] If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  TestSuiteOverview({
    this.elapsedTime,
    this.errorCount,
    this.failureCount,
    this.flakyCount,
    this.name,
    this.skippedCount,
    this.totalCount,
    this.xmlSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTime': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(elapsedTime, (value) => value.toMap()),
      'errorCount': ?errorCount,
      'failureCount': ?failureCount,
      'flakyCount': ?flakyCount,
      'name': ?name,
      'skippedCount': ?skippedCount,
      'totalCount': ?totalCount,
      'xmlSource': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(xmlSource, (value) => value.toMap()),
    };
  }

  factory TestSuiteOverview.fromMap(Map<String, dynamic> map) {
    return TestSuiteOverview(
      elapsedTime: (() { final guardedValue = map['elapsedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorCount: (() { final guardedValue = map['errorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      failureCount: (() { final guardedValue = map['failureCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      flakyCount: (() { final guardedValue = map['flakyCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skippedCount: (() { final guardedValue = map['skippedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalCount: (() { final guardedValue = map['totalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      xmlSource: (() { final guardedValue = map['xmlSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

