// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_backup_file_v1beta1_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_backup_file_v1beta1_args_doc}
class BackupFileV1beta1Args {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> backupId;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final pulumi.Input<String>? description;
  /// Immutable. KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Name of the file share in the source Filestore instance that the backup is created from.
  final pulumi.Input<String>? sourceFileShare;
  /// The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final pulumi.Input<String>? sourceInstance;

  /// Creates a new [BackupFileV1beta1Args].
  /// [backupId] Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  /// [description] A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  /// [kmsKeyName] Immutable. KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [project] Optional.
  /// [sourceFileShare] Name of the file share in the source Filestore instance that the backup is created from.
  /// [sourceInstance] The resource name of the source Filestore instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  BackupFileV1beta1Args({
    required this.backupId,
    this.description,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.project,
    this.sourceFileShare,
    this.sourceInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'description': ?description,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'sourceFileShare': ?sourceFileShare,
      'sourceInstance': ?sourceInstance,
    };
  }

  factory BackupFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BackupFileV1beta1Args(
      backupId: (map['backupId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sourceFileShare: map['sourceFileShare'] == null ? null : (map['sourceFileShare']! as String).input(),
      sourceInstance: map['sourceInstance'] == null ? null : (map['sourceInstance']! as String).input(),
    );
  }
}

