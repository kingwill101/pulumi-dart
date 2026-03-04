import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';

/// Creates a backup.
/// Auto-naming is currently not supported for this resource.
class Backup extends pulumi.CustomResource {
  /// Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  late final pulumi.Output<String> backupId;

  /// Capacity of the source file share when the backup was created.
  late final pulumi.Output<String> capacityGb;

  /// The time when the backup was created.
  late final pulumi.Output<String> createTime;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String> description;

  /// Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.
  late final pulumi.Output<String> downloadBytes;

  /// Immutable. KMS key name used for data encryption.
  late final pulumi.Output<String> kmsKey;

  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Name of the file share in the source Filestore instance that the backup is created from.
  late final pulumi.Output<String> sourceFileShare;

  /// The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  late final pulumi.Output<String> sourceInstance;

  /// The service tier of the source Filestore instance that this backup is created from.
  late final pulumi.Output<String> sourceInstanceTier;

  /// The backup state.
  late final pulumi.Output<String> state;

  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  late final pulumi.Output<String> storageBytes;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_file_v1_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(String name, {BackupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:file/v1:Backup',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    backupId = registerOutput<String>('backupId');
    capacityGb = registerOutput<String>('capacityGb');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    downloadBytes = registerOutput<String>('downloadBytes');
    kmsKey = registerOutput<String>('kmsKey');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    sourceFileShare = registerOutput<String>('sourceFileShare');
    sourceInstance = registerOutput<String>('sourceInstance');
    sourceInstanceTier = registerOutput<String>('sourceInstanceTier');
    state = registerOutput<String>('state');
    storageBytes = registerOutput<String>('storageBytes');
  }
}
