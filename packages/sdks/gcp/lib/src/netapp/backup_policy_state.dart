// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// The total number of volumes assigned by this backup policy.
  final pulumi.Input<int>? assignedVolumeCount;
  /// Create time of the backup policy. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  final pulumi.Input<int>? dailyBackupLimit;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  final pulumi.Input<bool>? enabled;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the region for the policy to apply to.
  final pulumi.Input<String>? location;
  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final pulumi.Input<int>? monthlyBackupLimit;
  /// The name of the backup policy. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of the backup policy.
  final pulumi.Input<String>? state;
  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final pulumi.Input<int>? weeklyBackupLimit;

  /// Creates a new [BackupPolicyState].
  /// [assignedVolumeCount] The total number of volumes assigned by this backup policy.
  /// [createTime] Create time of the backup policy. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [dailyBackupLimit] Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enabled] If enabled, make backups automatically according to the schedules.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the region for the policy to apply to.
  /// [monthlyBackupLimit] Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  /// [name] The name of the backup policy. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the backup policy.
  /// [weeklyBackupLimit] Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  BackupPolicyState({
    this.assignedVolumeCount,
    this.createTime,
    this.dailyBackupLimit,
    this.description,
    this.effectiveLabels,
    this.enabled,
    this.labels,
    this.location,
    this.monthlyBackupLimit,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.weeklyBackupLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedVolumeCount': ?assignedVolumeCount,
      'createTime': ?createTime,
      'dailyBackupLimit': ?dailyBackupLimit,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'enabled': ?enabled,
      'labels': ?labels,
      'location': ?location,
      'monthlyBackupLimit': ?monthlyBackupLimit,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'weeklyBackupLimit': ?weeklyBackupLimit,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      assignedVolumeCount: (() { final guardedValue = map['assignedVolumeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailyBackupLimit: (() { final guardedValue = map['dailyBackupLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyBackupLimit: (() { final guardedValue = map['monthlyBackupLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyBackupLimit: (() { final guardedValue = map['weeklyBackupLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

