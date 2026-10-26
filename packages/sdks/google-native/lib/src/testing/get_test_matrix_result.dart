// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_response.dart';
import 'environment_matrix_response.dart';
import 'result_storage_response.dart';
import 'test_execution_response.dart';
import 'test_specification_response.dart';

/// Result data returned by getTestMatrix.
class GetTestMatrixResult {
  /// Information about the client which invoked the test.
  final ClientInfoResponse? clientInfo;
  /// The devices the tests are being executed on.
  final EnvironmentMatrixResponse? environmentMatrix;
  /// If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  final bool? failFast;
  /// The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  final int? flakyTestAttempts;
  /// Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
  final String? invalidMatrixDetails;
  /// Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
  final String? outcomeSummary;
  /// The cloud project that owns the test matrix.
  final String? project;
  /// Where the results for the matrix are written.
  final ResultStorageResponse? resultStorage;
  /// Indicates the current progress of the test matrix.
  final String? state;
  /// The list of test executions that the service creates for this matrix.
  final List<TestExecutionResponse>? testExecutions;
  /// Unique id set by the service.
  final String? testMatrixId;
  /// How to run the test.
  final TestSpecificationResponse? testSpecification;
  /// The time this test matrix was initially created.
  final String? timestamp;

  /// Creates a new [GetTestMatrixResult].
  /// [clientInfo] Information about the client which invoked the test.
  /// [environmentMatrix] The devices the tests are being executed on.
  /// [failFast] If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  /// [flakyTestAttempts] The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  /// [invalidMatrixDetails] Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
  /// [outcomeSummary] Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
  /// [project] The cloud project that owns the test matrix.
  /// [resultStorage] Where the results for the matrix are written.
  /// [state] Indicates the current progress of the test matrix.
  /// [testExecutions] The list of test executions that the service creates for this matrix.
  /// [testMatrixId] Unique id set by the service.
  /// [testSpecification] How to run the test.
  /// [timestamp] The time this test matrix was initially created.
  const GetTestMatrixResult({
    this.clientInfo,
    this.environmentMatrix,
    this.failFast,
    this.flakyTestAttempts,
    this.invalidMatrixDetails,
    this.outcomeSummary,
    this.project,
    this.resultStorage,
    this.state,
    this.testExecutions,
    this.testMatrixId,
    this.testSpecification,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInfo': ?clientInfo?.toMap(),
      'environmentMatrix': ?environmentMatrix?.toMap(),
      'failFast': ?failFast,
      'flakyTestAttempts': ?flakyTestAttempts,
      'invalidMatrixDetails': ?invalidMatrixDetails,
      'outcomeSummary': ?outcomeSummary,
      'project': ?project,
      'resultStorage': ?resultStorage?.toMap(),
      'state': ?state,
      'testExecutions': ?(() { final guardedValue = testExecutions; if (guardedValue == null) return null; return pulumi.Input.encodeList<TestExecutionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testMatrixId': ?testMatrixId,
      'testSpecification': ?testSpecification?.toMap(),
      'timestamp': ?timestamp,
    };
  }

  factory GetTestMatrixResult.fromMap(Map<String, dynamic> map) {
    return GetTestMatrixResult(
      clientInfo: (() { final guardedValue = map['clientInfo']; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      environmentMatrix: (() { final guardedValue = map['environmentMatrix']; if (guardedValue == null) return null; return EnvironmentMatrixResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failFast: (() { final guardedValue = map['failFast']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      flakyTestAttempts: (() { final guardedValue = map['flakyTestAttempts']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      invalidMatrixDetails: (() { final guardedValue = map['invalidMatrixDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outcomeSummary: (() { final guardedValue = map['outcomeSummary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resultStorage: (() { final guardedValue = map['resultStorage']; if (guardedValue == null) return null; return ResultStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testExecutions: (() { final guardedValue = map['testExecutions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TestExecutionResponse>(guardedValue, (value) => TestExecutionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testMatrixId: (() { final guardedValue = map['testMatrixId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testSpecification: (() { final guardedValue = map['testSpecification']; if (guardedValue == null) return null; return TestSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
