// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_instance_filter.dart';
import 'patch_deployment_one_time_schedule.dart';
import 'patch_deployment_patch_config.dart';
import 'patch_deployment_recurring_schedule.dart';
import 'patch_deployment_rollout.dart';

/// {@template pulumi_osconfig_patch_deployment_patch_deployment_args_doc}
/// The set of arguments for PatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_patch_deployment_patch_deployment_args_doc}
class PatchDeploymentArgs {
  /// Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// Duration of the patch. After the duration ends, the patch times out.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final pulumi.Input<String>? duration;
  /// VM instances to patch.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentInstanceFilter> instanceFilter;
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
  final pulumi.Input<String> patchDeploymentId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Schedule recurring executions.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringSchedule>? recurringSchedule;
  /// Rollout strategy of the patch job.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRollout>? rollout;

  /// Creates a new [PatchDeploymentArgs].
  /// [description] Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Patch configuration that is applied.
  /// [patchDeploymentId] A name for the patch deployment in the project. When creating a name the following rules apply:
  /// [project] The ID of the project in which the resource belongs.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Rollout strategy of the patch job.
  PatchDeploymentArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? duration,
    required pulumi.Output<PatchDeploymentInstanceFilter> instanceFilter,
    pulumi.Output<PatchDeploymentOneTimeSchedule>? oneTimeSchedule,
    pulumi.Output<PatchDeploymentPatchConfig>? patchConfig,
    required pulumi.Output<String> patchDeploymentId,
    pulumi.Output<String>? project,
    pulumi.Output<PatchDeploymentRecurringSchedule>? recurringSchedule,
    pulumi.Output<PatchDeploymentRollout>? rollout,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      instanceFilter = pulumi.Input.asInput<PatchDeploymentInstanceFilter>(instanceFilter),
      oneTimeSchedule = pulumi.Input.asOptionalInput<PatchDeploymentOneTimeSchedule>(oneTimeSchedule),
      patchConfig = pulumi.Input.asOptionalInput<PatchDeploymentPatchConfig>(patchConfig),
      patchDeploymentId = pulumi.Input.asInput<String>(patchDeploymentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      recurringSchedule = pulumi.Input.asOptionalInput<PatchDeploymentRecurringSchedule>(recurringSchedule),
      rollout = pulumi.Input.asOptionalInput<PatchDeploymentRollout>(rollout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'duration': ?duration,
      'instanceFilter': pulumi.Input.mapInputValue<PatchDeploymentInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'oneTimeSchedule': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentOneTimeSchedule, Map<String, dynamic>>(oneTimeSchedule, (value) => value.toMap()),
      'patchConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfig, Map<String, dynamic>>(patchConfig, (value) => value.toMap()),
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
      'recurringSchedule': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentRecurringSchedule, Map<String, dynamic>>(recurringSchedule, (value) => value.toMap()),
      'rollout': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      instanceFilter: pulumi.Output.create<PatchDeploymentInstanceFilter>(PatchDeploymentInstanceFilter.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())),
      oneTimeSchedule: map['oneTimeSchedule'] == null ? null : pulumi.Output.create<PatchDeploymentOneTimeSchedule>(PatchDeploymentOneTimeSchedule.fromMap((map['oneTimeSchedule'] as Map).cast<String, dynamic>())),
      patchConfig: map['patchConfig'] == null ? null : pulumi.Output.create<PatchDeploymentPatchConfig>(PatchDeploymentPatchConfig.fromMap((map['patchConfig'] as Map).cast<String, dynamic>())),
      patchDeploymentId: pulumi.Output.create<String>(map['patchDeploymentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recurringSchedule: map['recurringSchedule'] == null ? null : pulumi.Output.create<PatchDeploymentRecurringSchedule>(PatchDeploymentRecurringSchedule.fromMap((map['recurringSchedule'] as Map).cast<String, dynamic>())),
      rollout: map['rollout'] == null ? null : pulumi.Output.create<PatchDeploymentRollout>(PatchDeploymentRollout.fromMap((map['rollout'] as Map).cast<String, dynamic>())),
    );
  }
}

