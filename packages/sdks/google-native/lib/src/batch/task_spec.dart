// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_resource.dart';
import 'environment.dart';
import 'lifecycle_policy.dart';
import 'runnable.dart';
import 'volume.dart';

/// Spec of a task
class TaskSpec {
  /// ComputeResource requirements.
  final pulumi.Input<ComputeResource>? computeResource;
  /// Environment variables to set before running the Task.
  final pulumi.Input<Environment>? environment;
  /// Deprecated: please use environment(non-plural) instead.
  final pulumi.Input<Map<String, String>>? environments;
  /// Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  final pulumi.Input<List<LifecyclePolicy>>? lifecyclePolicies;
  /// Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  final pulumi.Input<int>? maxRetryCount;
  /// Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  final pulumi.Input<String>? maxRunDuration;
  /// The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  final pulumi.Input<List<Runnable>>? runnables;
  /// Volumes to mount before running Tasks using this TaskSpec.
  final pulumi.Input<List<Volume>>? volumes;

  /// Creates a new [TaskSpec].
  /// [computeResource] ComputeResource requirements.
  /// [environment] Environment variables to set before running the Task.
  /// [environments] Deprecated: please use environment(non-plural) instead.
  /// [lifecyclePolicies] Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  /// [maxRetryCount] Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  /// [maxRunDuration] Maximum duration the task should run. The task will be killed and marked as FAILED if over this limit.
  /// [runnables] The sequence of scripts or containers to run for this Task. Each Task using this TaskSpec executes its list of runnables in order. The Task succeeds if all of its runnables either exit with a zero status or any that exit with a non-zero status have the ignore_exit_status flag. Background runnables are killed automatically (if they have not already exited) a short time after all foreground runnables have completed. Even though this is likely to result in a non-zero exit status for the background runnable, these automatic kills are not treated as Task failures.
  /// [volumes] Volumes to mount before running Tasks using this TaskSpec.
  const TaskSpec({
    this.computeResource,
    this.environment,
    this.environments,
    this.lifecyclePolicies,
    this.maxRetryCount,
    this.maxRunDuration,
    this.runnables,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeResource': ?pulumi.Input.mapOptionalInputValue<ComputeResource, Map<String, dynamic>>(computeResource, (value) => value.toMap()),
      'environment': ?pulumi.Input.mapOptionalInputValue<Environment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'environments': ?environments,
      'lifecyclePolicies': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicy>, List<Map<String, dynamic>>>(lifecyclePolicies, (value) => pulumi.Input.encodeList<LifecyclePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxRetryCount': ?maxRetryCount,
      'maxRunDuration': ?maxRunDuration,
      'runnables': ?pulumi.Input.mapOptionalInputValue<List<Runnable>, List<Map<String, dynamic>>>(runnables, (value) => pulumi.Input.encodeList<Runnable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskSpec.fromMap(Map<String, dynamic> map) {
    return TaskSpec(
      computeResource: (() { final guardedValue = map['computeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Environment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifecyclePolicies: (() { final guardedValue = map['lifecyclePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicy>(guardedValue, (value) => LifecyclePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxRetryCount: (() { final guardedValue = map['maxRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRunDuration: (() { final guardedValue = map['maxRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runnables: (() { final guardedValue = map['runnables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Runnable>(guardedValue, (value) => Runnable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Volume>(guardedValue, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

