// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Backup resources.
class BackupState {
  /// Region in which backup is stored.
  final pulumi.Input<String>? backupRegion;
  /// Type of backup, manually created or created by a backup policy. Possible Values : [TYPE_UNSPECIFIED, MANUAL, SCHEDULED]
  final pulumi.Input<String>? backupType;
  /// Backups of a volume build incrementally on top of each other. They form a "backup chain".
  /// Total size of all backups in a chain in bytes = baseline backup size + sum(incremental backup size)
  final pulumi.Input<String>? chainStorageBytes;
  /// Create time of the backup. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the backup.
  final pulumi.Input<String>? location;
  /// The resource name of the backup. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  final pulumi.Input<String>? sourceSnapshot;
  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  final pulumi.Input<String>? sourceVolume;
  /// The state of the Backup Vault. Possible Values : [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING, ERROR, UPDATING]
  final pulumi.Input<String>? state;
  /// Name of the backup vault to store the backup in.
  final pulumi.Input<String>? vaultName;
  /// Region of the volume from which the backup was created.
  final pulumi.Input<String>? volumeRegion;
  /// Size of the file system when the backup was created. When creating a new volume from the backup, the volume capacity will have to be at least as big.
  final pulumi.Input<String>? volumeUsageBytes;

  /// Creates a new [BackupState].
  /// [backupRegion] Region in which backup is stored.
  /// [backupType] Type of backup, manually created or created by a backup policy. Possible Values : [TYPE_UNSPECIFIED, MANUAL, SCHEDULED]
  /// [chainStorageBytes] Backups of a volume build incrementally on top of each other. They form a "backup chain".
  /// [createTime] Create time of the backup. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location of the backup.
  /// [name] The resource name of the backup. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceSnapshot] If specified, backup will be created from the given snapshot. If not specified,
  /// [sourceVolume] ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  /// [state] The state of the Backup Vault. Possible Values : [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING, ERROR, UPDATING]
  /// [vaultName] Name of the backup vault to store the backup in.
  /// [volumeRegion] Region of the volume from which the backup was created.
  /// [volumeUsageBytes] Size of the file system when the backup was created. When creating a new volume from the backup, the volume capacity will have to be at least as big.
  BackupState({
    pulumi.Output<String>? backupRegion,
    pulumi.Output<String>? backupType,
    pulumi.Output<String>? chainStorageBytes,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? sourceSnapshot,
    pulumi.Output<String>? sourceVolume,
    pulumi.Output<String>? state,
    pulumi.Output<String>? vaultName,
    pulumi.Output<String>? volumeRegion,
    pulumi.Output<String>? volumeUsageBytes,
  }) :
      backupRegion = pulumi.Input.asOptionalInput<String>(backupRegion),
      backupType = pulumi.Input.asOptionalInput<String>(backupType),
      chainStorageBytes = pulumi.Input.asOptionalInput<String>(chainStorageBytes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
      sourceVolume = pulumi.Input.asOptionalInput<String>(sourceVolume),
      state = pulumi.Input.asOptionalInput<String>(state),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName),
      volumeRegion = pulumi.Input.asOptionalInput<String>(volumeRegion),
      volumeUsageBytes = pulumi.Input.asOptionalInput<String>(volumeUsageBytes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRegion': ?backupRegion,
      'backupType': ?backupType,
      'chainStorageBytes': ?chainStorageBytes,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'sourceSnapshot': ?sourceSnapshot,
      'sourceVolume': ?sourceVolume,
      'state': ?state,
      'vaultName': ?vaultName,
      'volumeRegion': ?volumeRegion,
      'volumeUsageBytes': ?volumeUsageBytes,
    };
  }

  factory BackupState.fromMap(Map<String, dynamic> map) {
    return BackupState(
      backupRegion: map['backupRegion'] == null ? null : pulumi.Output.create<String>(map['backupRegion'] as String),
      backupType: map['backupType'] == null ? null : pulumi.Output.create<String>(map['backupType'] as String),
      chainStorageBytes: map['chainStorageBytes'] == null ? null : pulumi.Output.create<String>(map['chainStorageBytes'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : pulumi.Output.create<String>(map['sourceSnapshot'] as String),
      sourceVolume: map['sourceVolume'] == null ? null : pulumi.Output.create<String>(map['sourceVolume'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
      volumeRegion: map['volumeRegion'] == null ? null : pulumi.Output.create<String>(map['volumeRegion'] as String),
      volumeUsageBytes: map['volumeUsageBytes'] == null ? null : pulumi.Output.create<String>(map['volumeUsageBytes'] as String),
    );
  }
}

