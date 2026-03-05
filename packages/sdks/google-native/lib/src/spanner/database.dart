import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'encryption_config_response.dart';
import 'restore_info_response.dart';

/// Creates a new Cloud Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format `/operations/` and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.
/// Auto-naming is currently not supported for this resource.
class Database extends pulumi.CustomResource {
  /// If exists, the time at which the database creation started.
  late final pulumi.Output<String> createTime;

  /// The dialect of the Cloud Spanner Database.
  late final pulumi.Output<String> databaseDialect;

  /// The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
  late final pulumi.Output<String> defaultLeader;

  /// Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  late final pulumi.Output<String> earliestVersionTime;

  /// Whether drop protection is enabled for this database. Defaults to false, if not set. For more details, please see how to [prevent accidental database deletion](https://cloud.google.com/spanner/docs/prevent-database-deletion).
  late final pulumi.Output<bool> enableDropProtection;

  /// For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
  late final pulumi.Output<EncryptionConfigResponse> encryptionConfig;

  /// For databases that are using customer managed encryption, this field contains the encryption information for the database, such as all Cloud KMS key versions that are in use. The `encryption_status' field inside of each `EncryptionInfo` is not populated. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionInfo;
  late final pulumi.Output<String> instanceId;

  /// The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// If true, the database is being updated. If false, there are no ongoing update operations for the database.
  late final pulumi.Output<bool> reconciling;

  /// Applicable only for restored databases. Contains information about the restore source.
  late final pulumi.Output<RestoreInfoResponse> restoreInfo;

  /// The current database state.
  late final pulumi.Output<String> state;

  /// The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  late final pulumi.Output<String> versionRetentionPeriod;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_spanner_v1_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:spanner/v1:Database',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    databaseDialect = registerOutput<String>('databaseDialect');
    defaultLeader = registerOutput<String>('defaultLeader');
    earliestVersionTime = registerOutput<String>('earliestVersionTime');
    enableDropProtection = registerOutput<bool>('enableDropProtection');
    encryptionConfig = registerOutput<EncryptionConfigResponse>(
      'encryptionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionInfo = registerOutput<List<Map<String, dynamic>>>(
      'encryptionInfo',
    );
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    restoreInfo = registerOutput<RestoreInfoResponse>(
      'restoreInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RestoreInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
    versionRetentionPeriod = registerOutput<String>('versionRetentionPeriod');
  }
}
