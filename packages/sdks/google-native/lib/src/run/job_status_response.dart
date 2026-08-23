// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_reference_response.dart';
import 'google_cloud_run_v1_condition_response.dart';

/// JobStatus represents the current state of a Job.
class JobStatusResponse {
  /// Conditions communicate information about ongoing/complete reconciliation processes that bring the "spec" inline with the observed state of the world. Job-specific conditions include: * `Ready`: `True` when the job is ready to be executed.
  final pulumi.Input<List<GoogleCloudRunV1ConditionResponse>> conditions;
  /// Number of executions created for this job.
  final pulumi.Input<int> executionCount;
  /// A pointer to the most recently created execution for this job. This is set regardless of the eventual state of the execution.
  final pulumi.Input<ExecutionReferenceResponse> latestCreatedExecution;
  /// The 'generation' of the job that was last processed by the controller.
  final pulumi.Input<int> observedGeneration;

  /// Creates a new [JobStatusResponse].
  /// [conditions] Conditions communicate information about ongoing/complete reconciliation processes that bring the "spec" inline with the observed state of the world. Job-specific conditions include: * `Ready`: `True` when the job is ready to be executed.
  /// [executionCount] Number of executions created for this job.
  /// [latestCreatedExecution] A pointer to the most recently created execution for this job. This is set regardless of the eventual state of the execution.
  /// [observedGeneration] The 'generation' of the job that was last processed by the controller.
  const JobStatusResponse({
    required this.conditions,
    required this.executionCount,
    required this.latestCreatedExecution,
    required this.observedGeneration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GoogleCloudRunV1ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GoogleCloudRunV1ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionCount': executionCount,
      'latestCreatedExecution': pulumi.Input.mapInputValue<ExecutionReferenceResponse, Map<String, dynamic>>(latestCreatedExecution, (value) => value.toMap()),
      'observedGeneration': observedGeneration,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV1ConditionResponse>(map['conditions']!, (value) => GoogleCloudRunV1ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      executionCount: pulumi.Input.fromValue(map['executionCount'] as int),
      latestCreatedExecution: pulumi.Input.fromValue(ExecutionReferenceResponse.fromMap((map['latestCreatedExecution']! as Map).cast<String, dynamic>())),
      observedGeneration: pulumi.Input.fromValue(map['observedGeneration'] as int),
    );
  }
}
