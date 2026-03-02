// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_response.dart';
import 'shard_response.dart';
import 'test_details_response.dart';
import 'test_specification_response.dart';
import 'tool_results_step_response.dart';

/// A single test executed in a single environment.
class TestExecutionResponse {
  /// How the host machine(s) are configured.
  final pulumi.Input<EnvironmentResponse> environment;
  /// Id of the containing TestMatrix.
  final pulumi.Input<String> matrixId;
  /// The cloud project that owns the test execution.
  final pulumi.Input<String> project;
  /// Details about the shard.
  final pulumi.Input<ShardResponse> shard;
  /// Indicates the current progress of the test execution (e.g., FINISHED).
  final pulumi.Input<String> state;
  /// Additional details about the running test.
  final pulumi.Input<TestDetailsResponse> testDetails;
  /// How to run the test.
  final pulumi.Input<TestSpecificationResponse> testSpecification;
  /// The time this test execution was initially created.
  final pulumi.Input<String> timestamp;
  /// Where the results for this execution are written.
  final pulumi.Input<ToolResultsStepResponse> toolResultsStep;

  /// Creates a new [TestExecutionResponse].
  /// [environment] How the host machine(s) are configured.
  /// [matrixId] Id of the containing TestMatrix.
  /// [project] The cloud project that owns the test execution.
  /// [shard] Details about the shard.
  /// [state] Indicates the current progress of the test execution (e.g., FINISHED).
  /// [testDetails] Additional details about the running test.
  /// [testSpecification] How to run the test.
  /// [timestamp] The time this test execution was initially created.
  /// [toolResultsStep] Where the results for this execution are written.
  TestExecutionResponse({
    required this.environment,
    required this.matrixId,
    required this.project,
    required this.shard,
    required this.state,
    required this.testDetails,
    required this.testSpecification,
    required this.timestamp,
    required this.toolResultsStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': pulumi.Input.mapInputValue<EnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'matrixId': matrixId,
      'project': project,
      'shard': pulumi.Input.mapInputValue<ShardResponse, Map<String, dynamic>>(shard, (value) => value.toMap()),
      'state': state,
      'testDetails': pulumi.Input.mapInputValue<TestDetailsResponse, Map<String, dynamic>>(testDetails, (value) => value.toMap()),
      'testSpecification': pulumi.Input.mapInputValue<TestSpecificationResponse, Map<String, dynamic>>(testSpecification, (value) => value.toMap()),
      'timestamp': timestamp,
      'toolResultsStep': pulumi.Input.mapInputValue<ToolResultsStepResponse, Map<String, dynamic>>(toolResultsStep, (value) => value.toMap()),
    };
  }

  factory TestExecutionResponse.fromMap(Map<String, dynamic> map) {
    return TestExecutionResponse(
      environment: (EnvironmentResponse.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      matrixId: (map['matrixId'] as String).input(),
      project: (map['project'] as String).input(),
      shard: (ShardResponse.fromMap((map['shard'] as Map).cast<String, dynamic>())).input(),
      state: (map['state'] as String).input(),
      testDetails: (TestDetailsResponse.fromMap((map['testDetails'] as Map).cast<String, dynamic>())).input(),
      testSpecification: (TestSpecificationResponse.fromMap((map['testSpecification'] as Map).cast<String, dynamic>())).input(),
      timestamp: (map['timestamp'] as String).input(),
      toolResultsStep: (ToolResultsStepResponse.fromMap((map['toolResultsStep'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

