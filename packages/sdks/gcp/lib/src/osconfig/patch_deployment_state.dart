// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_instance_filter.dart';
import 'patch_deployment_one_time_schedule.dart';
import 'patch_deployment_patch_config.dart';
import 'patch_deployment_recurring_schedule.dart';
import 'patch_deployment_rollout.dart';

/// Input properties used for looking up and filtering PatchDeployment resources.
class PatchDeploymentState {
  /// Time the patch deployment was created. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// Duration of the patch. After the duration ends, the patch times out.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final pulumi.Input<String>? duration;
  /// VM instances to patch.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentInstanceFilter>? instanceFilter;
  /// The last time a patch job was started by this deployment. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastExecuteTime;
  /// Unique name for the patch deployment resource in a project.
  /// The patch deployment name is in the form: projects/{project_id}/patchDeployments/{patchDeploymentId}.
  final pulumi.Input<String>? name;
  /// Schedule a one-time execution.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentOneTimeSchedule>? oneTimeSchedule;
  /// Patch configuration that is applied.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfig>? patchConfig;
  /// A name for the patch deployment in the project. When creating a name the following rules apply:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  final pulumi.Input<String>? patchDeploymentId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Schedule recurring executions.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringSchedule>? recurringSchedule;
  /// Rollout strategy of the patch job.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRollout>? rollout;
  /// Time the patch deployment was last updated. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PatchDeploymentState].
  /// [createTime] Time the patch deployment was created. Timestamp is in RFC3339 text format.
  /// [description] Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [lastExecuteTime] The last time a patch job was started by this deployment. Timestamp is in RFC3339 text format.
  /// [name] Unique name for the patch deployment resource in a project.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Patch configuration that is applied.
  /// [patchDeploymentId] A name for the patch deployment in the project. When creating a name the following rules apply:
  /// [project] The ID of the project in which the resource belongs.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Rollout strategy of the patch job.
  /// [updateTime] Time the patch deployment was last updated. Timestamp is in RFC3339 text format.
  const PatchDeploymentState({
    this.createTime,
    this.description,
    this.duration,
    this.instanceFilter,
    this.lastExecuteTime,
    this.name,
    this.oneTimeSchedule,
    this.patchConfig,
    this.patchDeploymentId,
    this.project,
    this.recurringSchedule,
    this.rollout,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'duration': ?duration,
      'instanceFilter': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'lastExecuteTime': ?lastExecuteTime,
      'name': ?name,
      'oneTimeSchedule': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentOneTimeSchedule, Map<String, dynamic>>(oneTimeSchedule, (value) => value.toMap()),
      'patchConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfig, Map<String, dynamic>>(patchConfig, (value) => value.toMap()),
      'patchDeploymentId': ?patchDeploymentId,
      'project': ?project,
      'recurringSchedule': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentRecurringSchedule, Map<String, dynamic>>(recurringSchedule, (value) => value.toMap()),
      'rollout': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory PatchDeploymentState.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFilter: (() { final guardedValue = map['instanceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentInstanceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastExecuteTime: (() { final guardedValue = map['lastExecuteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oneTimeSchedule: (() { final guardedValue = map['oneTimeSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentOneTimeSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      patchConfig: (() { final guardedValue = map['patchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      patchDeploymentId: (() { final guardedValue = map['patchDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurringSchedule: (() { final guardedValue = map['recurringSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentRecurringSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentRollout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

