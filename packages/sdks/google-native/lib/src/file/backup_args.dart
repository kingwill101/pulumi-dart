// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_file_v1_backup_args_doc}
class BackupArgs {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  final pulumi.Input<String> backupId;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// Immutable. KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKey;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  final pulumi.Input<String>? sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final pulumi.Input<String>? sourceInstance;

  /// Creates a new [BackupArgs].
  /// [backupId] Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [kmsKey] Immutable. KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [project] Optional.
  /// [sourceFileShare] Name of the file share in the source Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  BackupArgs({
    required pulumi.Output<String> backupId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? sourceFileShare,
    pulumi.Output<String>? sourceInstance,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceFileShare = pulumi.Input.asOptionalInput<String>(sourceFileShare),
      sourceInstance = pulumi.Input.asOptionalInput<String>(sourceInstance);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'description': ?description,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceFileShare: map['sourceFileShare'] == null ? null : pulumi.Output.create<String>(map['sourceFileShare'] as String),
      sourceInstance: map['sourceInstance'] == null ? null : pulumi.Output.create<String>(map['sourceInstance'] as String),
    );
  }
}

