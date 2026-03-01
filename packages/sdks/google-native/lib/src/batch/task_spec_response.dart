// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource_response.dart';
import 'environment_response.dart';
import 'lifecycle_policy_response.dart';
import 'runnable_response.dart';
import 'volume_response.dart';

/// Spec of a task
class TaskSpecResponse {
  /// ComputeResource requirements.
  final ComputeResourceResponse computeResource;
  /// Environment variables to set before running the Task.
  final EnvironmentResponse environment;
  /// Deprecated: please use environment(non-plural) instead.
  final Map<String, String> environments;
  /// Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  final List<LifecyclePolicyResponse> lifecyclePolicies;
  /// Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  final int maxRetryCount;
  /// Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  final String maxRunDuration;
  /// The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  final List<RunnableResponse> runnables;
  /// Volumes to mount before running Tasks using this TaskSpec.
  final List<VolumeResponse> volumes;

  /// Creates a new [TaskSpecResponse].
  /// [computeResource] ComputeResource requirements.
  /// [environment] Environment variables to set before running the Task.
  /// [environments] Deprecated: please use environment(non-plural) instead.
  /// [lifecyclePolicies] Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  /// [maxRetryCount] Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  /// [maxRunDuration] Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  /// [runnables] The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  /// [volumes] Volumes to mount before running Tasks using this TaskSpec.
  TaskSpecResponse({
    required this.computeResource,
    required this.environment,
    required this.environments,
    required this.lifecyclePolicies,
    required this.maxRetryCount,
    required this.maxRunDuration,
    required this.runnables,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeResource': computeResource.toMap(),
      'environment': environment.toMap(),
      'environments': environments,
      'lifecyclePolicies': pulumi.Input.encodeList<LifecyclePolicyResponse, Map<String, dynamic>>(lifecyclePolicies, (value) => value.toMap()),
      'maxRetryCount': maxRetryCount,
      'maxRunDuration': maxRunDuration,
      'runnables': pulumi.Input.encodeList<RunnableResponse, Map<String, dynamic>>(runnables, (value) => value.toMap()),
      'volumes': pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes, (value) => value.toMap()),
    };
  }

  factory TaskSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse(
      computeResource: ComputeResourceResponse.fromMap((map['computeResource'] as Map).cast<String, dynamic>()),
      environment: EnvironmentResponse.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      environments: (map['environments'] as Map).cast<String, String>(),
      lifecyclePolicies: pulumi.Input.decodeList<LifecyclePolicyResponse>(map['lifecyclePolicies'], (value) => LifecyclePolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      maxRetryCount: map['maxRetryCount'] as int,
      maxRunDuration: map['maxRunDuration'] as String,
      runnables: pulumi.Input.decodeList<RunnableResponse>(map['runnables'], (value) => RunnableResponse.fromMap((value as Map).cast<String, dynamic>())),
      volumes: pulumi.Input.decodeList<VolumeResponse>(map['volumes'], (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

