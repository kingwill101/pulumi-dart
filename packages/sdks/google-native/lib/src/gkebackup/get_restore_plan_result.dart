// ignore_for_file: unused_element, unnecessary_cast

import 'restore_config_response.dart';

/// Result data returned by getRestorePlan.
class GetRestorePlanResult {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  final String? backupPlan;
  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final String? cluster;
  /// The timestamp when this RestorePlan resource was created.
  final String? createTime;
  /// Optional. User specified descriptive string for this RestorePlan.
  final String? description;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.
  final String? etag;
  /// Optional. A set of custom labels supplied by user.
  final Map<String, String>? labels;
  /// The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.
  final String? name;
  /// Configuration of Restores created via this RestorePlan.
  final RestoreConfigResponse? restoreConfig;
  /// State of the RestorePlan. This State field reflects the various stages a RestorePlan can be in during the Create operation.
  final String? state;
  /// Human-readable description of why RestorePlan is in the current `state`
  final String? stateReason;
  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String? uid;
  /// The timestamp when this RestorePlan resource was last updated.
  final String? updateTime;

  /// Creates a new [GetRestorePlanResult].
  /// [backupPlan] Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  /// [cluster] Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [createTime] The timestamp when this RestorePlan resource was created.
  /// [description] Optional. User specified descriptive string for this RestorePlan.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [name] The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.
  /// [restoreConfig] Configuration of Restores created via this RestorePlan.
  /// [state] State of the RestorePlan. This State field reflects the various stages a RestorePlan can be in during the Create operation.
  /// [stateReason] Human-readable description of why RestorePlan is in the current `state`
  /// [uid] Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  /// [updateTime] The timestamp when this RestorePlan resource was last updated.
  const GetRestorePlanResult({
    this.backupPlan,
    this.cluster,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.restoreConfig,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': ?backupPlan,
      'cluster': ?cluster,
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'restoreConfig': ?restoreConfig?.toMap(),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetRestorePlanResult.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanResult(
      backupPlan: (() { final guardedValue = map['backupPlan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restoreConfig: (() { final guardedValue = map['restoreConfig']; if (guardedValue == null) return null; return RestoreConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
