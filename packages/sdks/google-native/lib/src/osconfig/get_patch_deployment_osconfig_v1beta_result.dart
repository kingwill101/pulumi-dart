// ignore_for_file: unused_element, unnecessary_cast

import 'one_time_schedule_response_osconfig_v1beta.dart';
import 'patch_config_response_osconfig_v1beta.dart';
import 'patch_instance_filter_response_osconfig_v1beta.dart';
import 'patch_rollout_response_osconfig_v1beta.dart';
import 'recurring_schedule_response_osconfig_v1beta.dart';

/// Result data returned by getPatchDeployment.
class GetPatchDeploymentOsconfigV1betaResult {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String? createTime;
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final String? description;
  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final String? duration;
  /// VM instances to patch.
  final PatchInstanceFilterResponseOsconfigV1beta? instanceFilter;
  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String? lastExecuteTime;
  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final String? name;
  /// Schedule a one-time execution.
  final OneTimeScheduleResponseOsconfigV1beta? oneTimeSchedule;
  /// Optional. Patch configuration that is applied.
  final PatchConfigResponseOsconfigV1beta? patchConfig;
  /// Schedule recurring executions.
  final RecurringScheduleResponseOsconfigV1beta? recurringSchedule;
  /// Optional. Rollout strategy of the patch job.
  final PatchRolloutResponseOsconfigV1beta? rollout;
  /// Current state of the patch deployment.
  final String? state;
  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String? updateTime;

  /// Creates a new [GetPatchDeploymentOsconfigV1betaResult].
  /// [createTime] Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [description] Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Optional. Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [lastExecuteTime] The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [name] Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Optional. Patch configuration that is applied.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Optional. Rollout strategy of the patch job.
  /// [state] Current state of the patch deployment.
  /// [updateTime] Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  const GetPatchDeploymentOsconfigV1betaResult({
    this.createTime,
    this.description,
    this.duration,
    this.instanceFilter,
    this.lastExecuteTime,
    this.name,
    this.oneTimeSchedule,
    this.patchConfig,
    this.recurringSchedule,
    this.rollout,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'duration': ?duration,
      'instanceFilter': ?instanceFilter?.toMap(),
      'lastExecuteTime': ?lastExecuteTime,
      'name': ?name,
      'oneTimeSchedule': ?oneTimeSchedule?.toMap(),
      'patchConfig': ?patchConfig?.toMap(),
      'recurringSchedule': ?recurringSchedule?.toMap(),
      'rollout': ?rollout?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetPatchDeploymentOsconfigV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentOsconfigV1betaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFilter: (() { final guardedValue = map['instanceFilter']; if (guardedValue == null) return null; return PatchInstanceFilterResponseOsconfigV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastExecuteTime: (() { final guardedValue = map['lastExecuteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oneTimeSchedule: (() { final guardedValue = map['oneTimeSchedule']; if (guardedValue == null) return null; return OneTimeScheduleResponseOsconfigV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      patchConfig: (() { final guardedValue = map['patchConfig']; if (guardedValue == null) return null; return PatchConfigResponseOsconfigV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      recurringSchedule: (() { final guardedValue = map['recurringSchedule']; if (guardedValue == null) return null; return RecurringScheduleResponseOsconfigV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rollout: (() { final guardedValue = map['rollout']; if (guardedValue == null) return null; return PatchRolloutResponseOsconfigV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
