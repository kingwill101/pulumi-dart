// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_time_schedule.dart';
import 'patch_config.dart';
import 'patch_instance_filter.dart';
import 'patch_rollout.dart';
import 'recurring_schedule.dart';

/// {@template pulumi_osconfig_v1_patch_deployment_args_doc}
/// The set of arguments for PatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_patch_deployment_args_doc}
class PatchDeploymentArgs {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final pulumi.Input<String>? duration;
  /// VM instances to patch.
  final pulumi.Input<PatchInstanceFilter> instanceFilter;
  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final pulumi.Input<String>? name;
  /// Schedule a one-time execution.
  final pulumi.Input<OneTimeSchedule> oneTimeSchedule;
  /// Optional. Patch configuration that is applied.
  final pulumi.Input<PatchConfig>? patchConfig;
  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;
  /// Schedule recurring executions.
  final pulumi.Input<RecurringSchedule> recurringSchedule;
  /// Optional. Rollout strategy of the patch job.
  final pulumi.Input<PatchRollout>? rollout;

  /// Creates a new [PatchDeploymentArgs].
  /// [description] Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Optional. Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [name] Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Optional. Patch configuration that is applied.
  /// [patchDeploymentId] Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Optional. Rollout strategy of the patch job.
  PatchDeploymentArgs({
    this.description,
    this.duration,
    required this.instanceFilter,
    this.name,
    required this.oneTimeSchedule,
    this.patchConfig,
    required this.patchDeploymentId,
    this.project,
    required this.recurringSchedule,
    this.rollout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'duration': ?duration,
      'instanceFilter': pulumi.Input.mapInputValue<PatchInstanceFilter, Map<String, dynamic>>(instanceFilter, (value) => value.toMap()),
      'name': ?name,
      'oneTimeSchedule': pulumi.Input.mapInputValue<OneTimeSchedule, Map<String, dynamic>>(oneTimeSchedule, (value) => value.toMap()),
      'patchConfig': ?pulumi.Input.mapOptionalInputValue<PatchConfig, Map<String, dynamic>>(patchConfig, (value) => value.toMap()),
      'patchDeploymentId': patchDeploymentId,
      'project': ?project,
      'recurringSchedule': pulumi.Input.mapInputValue<RecurringSchedule, Map<String, dynamic>>(recurringSchedule, (value) => value.toMap()),
      'rollout': ?pulumi.Input.mapOptionalInputValue<PatchRollout, Map<String, dynamic>>(rollout, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      instanceFilter: (PatchInstanceFilter.fromMap((map['instanceFilter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      oneTimeSchedule: (OneTimeSchedule.fromMap((map['oneTimeSchedule'] as Map).cast<String, dynamic>())).input(),
      patchConfig: map['patchConfig'] == null ? null : (PatchConfig.fromMap((map['patchConfig'] as Map).cast<String, dynamic>())).input(),
      patchDeploymentId: (map['patchDeploymentId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      recurringSchedule: (RecurringSchedule.fromMap((map['recurringSchedule'] as Map).cast<String, dynamic>())).input(),
      rollout: map['rollout'] == null ? null : (PatchRollout.fromMap((map['rollout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

