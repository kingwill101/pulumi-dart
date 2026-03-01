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
  PatchDeploymentState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? duration,
    pulumi.Output<PatchDeploymentInstanceFilter>? instanceFilter,
    pulumi.Output<String>? lastExecuteTime,
    pulumi.Output<String>? name,
    pulumi.Output<PatchDeploymentOneTimeSchedule>? oneTimeSchedule,
    pulumi.Output<PatchDeploymentPatchConfig>? patchConfig,
    pulumi.Output<String>? patchDeploymentId,
    pulumi.Output<String>? project,
    pulumi.Output<PatchDeploymentRecurringSchedule>? recurringSchedule,
    pulumi.Output<PatchDeploymentRollout>? rollout,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      instanceFilter = pulumi.Input.asOptionalInput<PatchDeploymentInstanceFilter>(instanceFilter),
      lastExecuteTime = pulumi.Input.asOptionalInput<String>(lastExecuteTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      oneTimeSchedule = pulumi.Input.asOptionalInput<PatchDeploymentOneTimeSchedule>(oneTimeSchedule),
      patchConfig = pulumi.Input.asOptionalInput<PatchDeploymentPatchConfig>(patchConfig),
      patchDeploymentId = pulumi.Input.asOptionalInput<String>(patchDeploymentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      recurringSchedule = pulumi.Input.asOptionalInput<PatchDeploymentRecurringSchedule>(recurringSchedule),
      rollout = pulumi.Input.asOptionalInput<PatchDeploymentRollout>(rollout),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      instanceFilter: map['instanceFilter'] == null ? null : pulumi.Output.create<PatchDeploymentInstanceFilter>(PatchDeploymentInstanceFilter.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())),
      lastExecuteTime: map['lastExecuteTime'] == null ? null : pulumi.Output.create<String>(map['lastExecuteTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oneTimeSchedule: map['oneTimeSchedule'] == null ? null : pulumi.Output.create<PatchDeploymentOneTimeSchedule>(PatchDeploymentOneTimeSchedule.fromMap((map['oneTimeSchedule'] as Map).cast<String, dynamic>())),
      patchConfig: map['patchConfig'] == null ? null : pulumi.Output.create<PatchDeploymentPatchConfig>(PatchDeploymentPatchConfig.fromMap((map['patchConfig'] as Map).cast<String, dynamic>())),
      patchDeploymentId: map['patchDeploymentId'] == null ? null : pulumi.Output.create<String>(map['patchDeploymentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recurringSchedule: map['recurringSchedule'] == null ? null : pulumi.Output.create<PatchDeploymentRecurringSchedule>(PatchDeploymentRecurringSchedule.fromMap((map['recurringSchedule'] as Map).cast<String, dynamic>())),
      rollout: map['rollout'] == null ? null : pulumi.Output.create<PatchDeploymentRollout>(PatchDeploymentRollout.fromMap((map['rollout'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

