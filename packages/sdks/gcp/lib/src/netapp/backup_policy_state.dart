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
    pulumi.Output<int>? assignedVolumeCount,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? dailyBackupLimit,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enabled,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<int>? monthlyBackupLimit,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<int>? weeklyBackupLimit,
  }) :
      assignedVolumeCount = pulumi.Input.asOptionalInput<int>(assignedVolumeCount),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dailyBackupLimit = pulumi.Input.asOptionalInput<int>(dailyBackupLimit),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      monthlyBackupLimit = pulumi.Input.asOptionalInput<int>(monthlyBackupLimit),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      weeklyBackupLimit = pulumi.Input.asOptionalInput<int>(weeklyBackupLimit);

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
      assignedVolumeCount: map['assignedVolumeCount'] == null ? null : pulumi.Output.create<int>(map['assignedVolumeCount'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dailyBackupLimit: map['dailyBackupLimit'] == null ? null : pulumi.Output.create<int>(map['dailyBackupLimit'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monthlyBackupLimit: map['monthlyBackupLimit'] == null ? null : pulumi.Output.create<int>(map['monthlyBackupLimit'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      weeklyBackupLimit: map['weeklyBackupLimit'] == null ? null : pulumi.Output.create<int>(map['weeklyBackupLimit'] as int),
    );
  }
}

