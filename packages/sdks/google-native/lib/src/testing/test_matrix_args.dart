// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info.dart';
import 'environment_matrix.dart';
import 'result_storage.dart';
import 'test_specification.dart';

/// {@template pulumi_testing_v1_test_matrix_args_doc}
/// The set of arguments for TestMatrix.
/// {@endtemplate}
/// {@macro pulumi_testing_v1_test_matrix_args_doc}
class TestMatrixArgs {
  /// Information about the client which invoked the test.
  final pulumi.Input<ClientInfo>? clientInfo;
  /// The devices the tests are being executed on.
  final pulumi.Input<EnvironmentMatrix> environmentMatrix;
  /// If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  final pulumi.Input<bool>? failFast;
  /// The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  final pulumi.Input<int>? flakyTestAttempts;
  /// The cloud project that owns the test matrix.
  final pulumi.Input<String>? project;
  /// A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;
  /// Where the results for the matrix are written.
  final pulumi.Input<ResultStorage> resultStorage;
  /// How to run the test.
  final pulumi.Input<TestSpecification> testSpecification;

  /// Creates a new [TestMatrixArgs].
  /// [clientInfo] Information about the client which invoked the test.
  /// [environmentMatrix] The devices the tests are being executed on.
  /// [failFast] If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  /// [flakyTestAttempts] The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  /// [project] The cloud project that owns the test matrix.
  /// [requestId] A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.
  /// [resultStorage] Where the results for the matrix are written.
  /// [testSpecification] How to run the test.
  const TestMatrixArgs({
    this.clientInfo,
    required this.environmentMatrix,
    this.failFast,
    this.flakyTestAttempts,
    this.project,
    this.requestId,
    required this.resultStorage,
    required this.testSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInfo': ?pulumi.Input.mapOptionalInputValue<ClientInfo, Map<String, dynamic>>(clientInfo, (value) => value.toMap()),
      'environmentMatrix': pulumi.Input.mapInputValue<EnvironmentMatrix, Map<String, dynamic>>(environmentMatrix, (value) => value.toMap()),
      'failFast': ?failFast,
      'flakyTestAttempts': ?flakyTestAttempts,
      'project': ?project,
      'requestId': ?requestId,
      'resultStorage': pulumi.Input.mapInputValue<ResultStorage, Map<String, dynamic>>(resultStorage, (value) => value.toMap()),
      'testSpecification': pulumi.Input.mapInputValue<TestSpecification, Map<String, dynamic>>(testSpecification, (value) => value.toMap()),
    };
  }

  factory TestMatrixArgs.fromMap(Map<String, dynamic> map) {
    return TestMatrixArgs(
      clientInfo: (() { final guardedValue = map['clientInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentMatrix: pulumi.Input.fromValue(EnvironmentMatrix.fromMap((map['environmentMatrix']! as Map).cast<String, dynamic>())),
      failFast: (() { final guardedValue = map['failFast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flakyTestAttempts: (() { final guardedValue = map['flakyTestAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resultStorage: pulumi.Input.fromValue(ResultStorage.fromMap((map['resultStorage']! as Map).cast<String, dynamic>())),
      testSpecification: pulumi.Input.fromValue(TestSpecification.fromMap((map['testSpecification']! as Map).cast<String, dynamic>())),
    );
  }
}

