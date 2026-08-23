// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_ontap_source.dart';

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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the backup.
  final pulumi.Input<String>? location;
  /// The resource name of the backup. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// Details of the ONTAP source volume and snapshot.
  /// Structure is documented below.
  final pulumi.Input<BackupOntapSource>? ontapSource;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location of the backup.
  /// [name] The resource name of the backup. Needs to be unique per location.
  /// [ontapSource] Details of the ONTAP source volume and snapshot.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceSnapshot] If specified, backup will be created from the given snapshot. If not specified,
  /// [sourceVolume] ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  /// [state] The state of the Backup Vault. Possible Values : [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING, ERROR, UPDATING]
  /// [vaultName] Name of the backup vault to store the backup in.
  /// [volumeRegion] Region of the volume from which the backup was created.
  /// [volumeUsageBytes] Size of the file system when the backup was created. When creating a new volume from the backup, the volume capacity will have to be at least as big.
  const BackupState({
    this.backupRegion,
    this.backupType,
    this.chainStorageBytes,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.ontapSource,
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
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'ontapSource': ?pulumi.Input.mapOptionalInputValue<BackupOntapSource, Map<String, dynamic>>(ontapSource, (value) => value.toMap()),
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
      backupRegion: (() { final guardedValue = map['backupRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chainStorageBytes: (() { final guardedValue = map['chainStorageBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ontapSource: (() { final guardedValue = map['ontapSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupOntapSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVolume: (() { final guardedValue = map['sourceVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultName: (() { final guardedValue = map['vaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeRegion: (() { final guardedValue = map['volumeRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeUsageBytes: (() { final guardedValue = map['volumeUsageBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
