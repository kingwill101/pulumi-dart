// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response.dart';
import 'encryption_info_response.dart';
import 'restore_info_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// If exists, the time at which the database creation started.
  final String createTime;
  /// The dialect of the Cloud Spanner Database.
  final String databaseDialect;
  /// The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
  final String defaultLeader;
  /// Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  final String earliestVersionTime;
  /// Whether drop protection is enabled for this database. Defaults to false, if not set. For more details, please see how to [prevent accidental database deletion](https://cloud.google.com/spanner/docs/prevent-database-deletion).
  final bool enableDropProtection;
  /// For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
  final EncryptionConfigResponse encryptionConfig;
  /// For databases that are using customer managed encryption, this field contains the encryption information for the database, such as all Cloud KMS key versions that are in use. The `encryption_status' field inside of each `EncryptionInfo` is not populated. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
  final List<EncryptionInfoResponse> encryptionInfo;
  /// The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.
  final String name;
  /// If true, the database is being updated. If false, there are no ongoing update operations for the database.
  final bool reconciling;
  /// Applicable only for restored databases. Contains information about the restore source.
  final RestoreInfoResponse restoreInfo;
  /// The current database state.
  final String state;
  /// The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  final String versionRetentionPeriod;

  /// Creates a new [GetDatabaseResult].
  /// [createTime] If exists, the time at which the database creation started.
  /// [databaseDialect] The dialect of the Cloud Spanner Database.
  /// [defaultLeader] The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
  /// [earliestVersionTime] Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  /// [enableDropProtection] Whether drop protection is enabled for this database. Defaults to false, if not set. For more details, please see how to [prevent accidental database deletion](https://cloud.google.com/spanner/docs/prevent-database-deletion).
  /// [encryptionConfig] For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
  /// [encryptionInfo] For databases that are using customer managed encryption, this field contains the encryption information for the database, such as all Cloud KMS key versions that are in use. The `encryption_status' field inside of each `EncryptionInfo` is not populated. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
  /// [name] The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.
  /// [reconciling] If true, the database is being updated. If false, there are no ongoing update operations for the database.
  /// [restoreInfo] Applicable only for restored databases. Contains information about the restore source.
  /// [state] The current database state.
  /// [versionRetentionPeriod] The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  const GetDatabaseResult({
    required this.createTime,
    required this.databaseDialect,
    required this.defaultLeader,
    required this.earliestVersionTime,
    required this.enableDropProtection,
    required this.encryptionConfig,
    required this.encryptionInfo,
    required this.name,
    required this.reconciling,
    required this.restoreInfo,
    required this.state,
    required this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'databaseDialect': databaseDialect,
      'defaultLeader': defaultLeader,
      'earliestVersionTime': earliestVersionTime,
      'enableDropProtection': enableDropProtection,
      'encryptionConfig': encryptionConfig.toMap(),
      'encryptionInfo': pulumi.Input.encodeList<EncryptionInfoResponse, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'name': name,
      'reconciling': reconciling,
      'restoreInfo': restoreInfo.toMap(),
      'state': state,
      'versionRetentionPeriod': versionRetentionPeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      createTime: map['createTime'] as String,
      databaseDialect: map['databaseDialect'] as String,
      defaultLeader: map['defaultLeader'] as String,
      earliestVersionTime: map['earliestVersionTime'] as String,
      enableDropProtection: map['enableDropProtection'] as bool,
      encryptionConfig: EncryptionConfigResponse.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>()),
      encryptionInfo: pulumi.Input.decodeList<EncryptionInfoResponse>(map['encryptionInfo']!, (value) => EncryptionInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      restoreInfo: RestoreInfoResponse.fromMap((map['restoreInfo']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      versionRetentionPeriod: map['versionRetentionPeriod'] as String,
    );
  }
}

