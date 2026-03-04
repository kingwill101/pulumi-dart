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
  final pulumi.Input<ComputeResourceResponse> computeResource;

  /// Environment variables to set before running the Task.
  final pulumi.Input<EnvironmentResponse> environment;

  /// Deprecated: please use environment(non-plural) instead.
  final pulumi.Input<Map<String, String>> environments;

  /// Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  final pulumi.Input<List<LifecyclePolicyResponse>> lifecyclePolicies;

  /// Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  final pulumi.Input<int> maxRetryCount;

  /// Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  final pulumi.Input<String> maxRunDuration;

  /// The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  final pulumi.Input<List<RunnableResponse>> runnables;

  /// Volumes to mount before running Tasks using this TaskSpec.
  final pulumi.Input<List<VolumeResponse>> volumes;

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
      'computeResource':
          pulumi.Input.mapInputValue<
            ComputeResourceResponse,
            Map<String, dynamic>
          >(computeResource, (value) => value.toMap()),
      'environment':
          pulumi.Input.mapInputValue<EnvironmentResponse, Map<String, dynamic>>(
            environment,
            (value) => value.toMap(),
          ),
      'environments': environments,
      'lifecyclePolicies':
          pulumi.Input.mapInputValue<
            List<LifecyclePolicyResponse>,
            List<Map<String, dynamic>>
          >(
            lifecyclePolicies,
            (value) =>
                pulumi.Input.encodeList<
                  LifecyclePolicyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxRetryCount': maxRetryCount,
      'maxRunDuration': maxRunDuration,
      'runnables':
          pulumi.Input.mapInputValue<
            List<RunnableResponse>,
            List<Map<String, dynamic>>
          >(
            runnables,
            (value) =>
                pulumi.Input.encodeList<RunnableResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'volumes':
          pulumi.Input.mapInputValue<
            List<VolumeResponse>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) =>
                pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory TaskSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse(
      computeResource: pulumi.Input.fromValue(
        ComputeResourceResponse.fromMap(
          (map['computeResource']! as Map).cast<String, dynamic>(),
        ),
      ),
      environment: pulumi.Input.fromValue(
        EnvironmentResponse.fromMap(
          (map['environment']! as Map).cast<String, dynamic>(),
        ),
      ),
      environments: pulumi.Input.fromValue(
        (map['environments'] as Map).cast<String, String>(),
      ),
      lifecyclePolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LifecyclePolicyResponse>(
          map['lifecyclePolicies']!,
          (value) => LifecyclePolicyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      maxRetryCount: pulumi.Input.fromValue(map['maxRetryCount'] as int),
      maxRunDuration: pulumi.Input.fromValue(map['maxRunDuration'] as String),
      runnables: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RunnableResponse>(
          map['runnables']!,
          (value) =>
              RunnableResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      volumes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VolumeResponse>(
          map['volumes']!,
          (value) =>
              VolumeResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
