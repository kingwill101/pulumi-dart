// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_ontap_source.dart';

/// {@template pulumi_netapp_backup_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_backup_args_doc}
class BackupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String?>? description;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location of the backup.
  final pulumi.Input<String> location;
  /// The resource name of the backup. Needs to be unique per location.
  final pulumi.Input<String?>? name;
  /// Details of the ONTAP source volume and snapshot.
  /// Structure is documented below.
  final pulumi.Input<BackupOntapSource?>? ontapSource;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// If specified, backup will be created from the given snapshot. If not specified,
  /// there will be a new snapshot taken to initiate the backup creation.
  /// Format: `projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}``
  final pulumi.Input<String?>? sourceSnapshot;
  /// ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  final pulumi.Input<String?>? sourceVolume;
  /// Name of the backup vault to store the backup in.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Location of the backup.
  /// [name] The resource name of the backup. Needs to be unique per location.
  /// [ontapSource] Details of the ONTAP source volume and snapshot.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceSnapshot] If specified, backup will be created from the given snapshot. If not specified,
  /// [sourceVolume] ID of volumes this backup belongs to. Format: `projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}``
  /// [vaultName] Name of the backup vault to store the backup in.
  const BackupArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.ontapSource,
    this.project,
    this.sourceSnapshot,
    this.sourceVolume,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'ontapSource': ?pulumi.Input.mapOptionalInputValue<BackupOntapSource, Map<String, dynamic>>(ontapSource, (value) => value.toMap()),
      'project': ?project,
      'sourceSnapshot': ?sourceSnapshot,
      'sourceVolume': ?sourceVolume,
      'vaultName': vaultName,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ontapSource: (() { final guardedValue = map['ontapSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupOntapSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVolume: (() { final guardedValue = map['sourceVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
