import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'encryption_info_response.dart';

/// Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.
/// Auto-naming is currently not supported for this resource.
class Backup extends pulumi.CustomResource {
  /// Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  late final pulumi.Output<String> backupId;
  late final pulumi.Output<String> clusterId;

  /// The encryption information for the backup.
  late final pulumi.Output<EncryptionInfoResponse> encryptionInfo;

  /// `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  late final pulumi.Output<String> endTime;

  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> instanceId;

  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Size of the backup in bytes.
  late final pulumi.Output<String> sizeBytes;

  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  late final pulumi.Output<String> sourceBackup;

  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  late final pulumi.Output<String> sourceTable;

  /// `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  late final pulumi.Output<String> startTime;

  /// The current state of the backup.
  late final pulumi.Output<String> state;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_bigtableadmin_v2_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(String name, {BackupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:bigtableadmin/v2:Backup',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    backupId = registerOutput<String>('backupId');
    clusterId = registerOutput<String>('clusterId');
    encryptionInfo = registerOutput<EncryptionInfoResponse>('encryptionInfo');
    endTime = registerOutput<String>('endTime');
    expireTime = registerOutput<String>('expireTime');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sizeBytes = registerOutput<String>('sizeBytes');
    sourceBackup = registerOutput<String>('sourceBackup');
    sourceTable = registerOutput<String>('sourceTable');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
  }
}
