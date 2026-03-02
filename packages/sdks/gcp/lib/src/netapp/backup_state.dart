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
    this.backupRegion,
    this.backupType,
    this.chainStorageBytes,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.sourceSnapshot,
    this.sourceVolume,
    this.state,
    this.vaultName,
    this.volumeRegion,
    this.volumeUsageBytes,
  });

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
      backupRegion: map['backupRegion'] == null ? null : (map['backupRegion'] as String).input(),
      backupType: map['backupType'] == null ? null : (map['backupType'] as String).input(),
      chainStorageBytes: map['chainStorageBytes'] == null ? null : (map['chainStorageBytes'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : (map['sourceSnapshot'] as String).input(),
      sourceVolume: map['sourceVolume'] == null ? null : (map['sourceVolume'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      vaultName: map['vaultName'] == null ? null : (map['vaultName'] as String).input(),
      volumeRegion: map['volumeRegion'] == null ? null : (map['volumeRegion'] as String).input(),
      volumeUsageBytes: map['volumeUsageBytes'] == null ? null : (map['volumeUsageBytes'] as String).input(),
    );
  }
}

