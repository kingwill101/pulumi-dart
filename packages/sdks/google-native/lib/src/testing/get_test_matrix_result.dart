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
  final ClientInfoResponse clientInfo;

  /// The devices the tests are being executed on.
  final EnvironmentMatrixResponse environmentMatrix;

  /// If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  final bool failFast;

  /// The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  final int flakyTestAttempts;

  /// Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
  final String invalidMatrixDetails;

  /// Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
  final String outcomeSummary;

  /// The cloud project that owns the test matrix.
  final String project;

  /// Where the results for the matrix are written.
  final ResultStorageResponse resultStorage;

  /// Indicates the current progress of the test matrix.
  final String state;

  /// The list of test executions that the service creates for this matrix.
  final List<TestExecutionResponse> testExecutions;

  /// Unique id set by the service.
  final String testMatrixId;

  /// How to run the test.
  final TestSpecificationResponse testSpecification;

  /// The time this test matrix was initially created.
  final String timestamp;

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
  GetTestMatrixResult({
    required this.clientInfo,
    required this.environmentMatrix,
    required this.failFast,
    required this.flakyTestAttempts,
    required this.invalidMatrixDetails,
    required this.outcomeSummary,
    required this.project,
    required this.resultStorage,
    required this.state,
    required this.testExecutions,
    required this.testMatrixId,
    required this.testSpecification,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInfo': clientInfo.toMap(),
      'environmentMatrix': environmentMatrix.toMap(),
      'failFast': failFast,
      'flakyTestAttempts': flakyTestAttempts,
      'invalidMatrixDetails': invalidMatrixDetails,
      'outcomeSummary': outcomeSummary,
      'project': project,
      'resultStorage': resultStorage.toMap(),
      'state': state,
      'testExecutions':
          pulumi.Input.encodeList<TestExecutionResponse, Map<String, dynamic>>(
            testExecutions,
            (value) => value.toMap(),
          ),
      'testMatrixId': testMatrixId,
      'testSpecification': testSpecification.toMap(),
      'timestamp': timestamp,
    };
  }

  factory GetTestMatrixResult.fromMap(Map<String, dynamic> map) {
    return GetTestMatrixResult(
      clientInfo: ClientInfoResponse.fromMap(
        (map['clientInfo']! as Map).cast<String, dynamic>(),
      ),
      environmentMatrix: EnvironmentMatrixResponse.fromMap(
        (map['environmentMatrix']! as Map).cast<String, dynamic>(),
      ),
      failFast: map['failFast'] as bool,
      flakyTestAttempts: map['flakyTestAttempts'] as int,
      invalidMatrixDetails: map['invalidMatrixDetails'] as String,
      outcomeSummary: map['outcomeSummary'] as String,
      project: map['project'] as String,
      resultStorage: ResultStorageResponse.fromMap(
        (map['resultStorage']! as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      testExecutions: pulumi.Input.decodeList<TestExecutionResponse>(
        map['testExecutions']!,
        (value) => TestExecutionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      testMatrixId: map['testMatrixId'] as String,
      testSpecification: TestSpecificationResponse.fromMap(
        (map['testSpecification']! as Map).cast<String, dynamic>(),
      ),
      timestamp: map['timestamp'] as String,
    );
  }
}
