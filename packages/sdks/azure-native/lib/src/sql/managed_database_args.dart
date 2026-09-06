// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_database_args_doc}
/// The set of arguments for ManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_database_args_doc}
class ManagedDatabaseArgs {
  /// Whether to auto complete restore of this managed database.
  final pulumi.Input<bool?>? autoCompleteRestore;
  /// Collation of the metadata catalog.
  final pulumi.Input<dynamic>? catalogCollation;
  /// Collation of the managed database.
  final pulumi.Input<String?>? collation;
  /// Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
  final pulumi.Input<dynamic>? createMode;
  /// The restorable cross-subscription dropped database resource id to restore when creating this database.
  final pulumi.Input<String?>? crossSubscriptionRestorableDroppedDatabaseId;
  /// The resource identifier of the cross-subscription source database associated with create operation of this database.
  final pulumi.Input<String?>? crossSubscriptionSourceDatabaseId;
  /// Target managed instance id used in cross-subscription restore.
  final pulumi.Input<String?>? crossSubscriptionTargetManagedInstanceId;
  /// The name of the database.
  final pulumi.Input<String?>? databaseName;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final pulumi.Input<bool?>? isLedgerOn;
  /// Last backup file name for restore of this managed database.
  final pulumi.Input<String?>? lastBackupName;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the Long Term Retention backup to be used for restore of this managed database.
  final pulumi.Input<String?>? longTermRetentionBackupResourceId;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The resource identifier of the recoverable database associated with create operation of this database.
  final pulumi.Input<String?>? recoverableDatabaseId;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The restorable dropped database resource id to restore when creating this database.
  final pulumi.Input<String?>? restorableDroppedDatabaseId;
  /// Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String?>? restorePointInTime;
  /// The resource identifier of the source database associated with create operation of this database.
  final pulumi.Input<String?>? sourceDatabaseId;
  /// Conditional. If createMode is RestoreExternalBackup, this value is used. Specifies the identity used for storage container authentication. Can be 'SharedAccessSignature' or 'ManagedIdentity'; if not specified 'SharedAccessSignature' is assumed.
  final pulumi.Input<String?>? storageContainerIdentity;
  /// Conditional. If createMode is RestoreExternalBackup and storageContainerIdentity is not ManagedIdentity, this value is required. Specifies the storage container sas token.
  final pulumi.Input<String?>? storageContainerSasToken;
  /// Conditional. If createMode is RestoreExternalBackup, this value is required. Specifies the uri of the storage container where backups for this restore are stored.
  final pulumi.Input<String?>? storageContainerUri;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ManagedDatabaseArgs].
  /// [autoCompleteRestore] Whether to auto complete restore of this managed database.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] Collation of the managed database.
  /// [createMode] Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
  /// [crossSubscriptionRestorableDroppedDatabaseId] The restorable cross-subscription dropped database resource id to restore when creating this database.
  /// [crossSubscriptionSourceDatabaseId] The resource identifier of the cross-subscription source database associated with create operation of this database.
  /// [crossSubscriptionTargetManagedInstanceId] Target managed instance id used in cross-subscription restore.
  /// [databaseName] The name of the database.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [lastBackupName] Last backup file name for restore of this managed database.
  /// [location] Resource location.
  /// [longTermRetentionBackupResourceId] The name of the Long Term Retention backup to be used for restore of this managed database.
  /// [managedInstanceName] The name of the managed instance.
  /// [recoverableDatabaseId] The resource identifier of the recoverable database associated with create operation of this database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restorableDroppedDatabaseId] The restorable dropped database resource id to restore when creating this database.
  /// [restorePointInTime] Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sourceDatabaseId] The resource identifier of the source database associated with create operation of this database.
  /// [storageContainerIdentity] Conditional. If createMode is RestoreExternalBackup, this value is used. Specifies the identity used for storage container authentication. Can be 'SharedAccessSignature' or 'ManagedIdentity'; if not specified 'SharedAccessSignature' is assumed.
  /// [storageContainerSasToken] Conditional. If createMode is RestoreExternalBackup and storageContainerIdentity is not ManagedIdentity, this value is required. Specifies the storage container sas token.
  /// [storageContainerUri] Conditional. If createMode is RestoreExternalBackup, this value is required. Specifies the uri of the storage container where backups for this restore are stored.
  /// [tags] Resource tags.
  const ManagedDatabaseArgs({
    this.autoCompleteRestore,
    this.catalogCollation,
    this.collation,
    this.createMode,
    this.crossSubscriptionRestorableDroppedDatabaseId,
    this.crossSubscriptionSourceDatabaseId,
    this.crossSubscriptionTargetManagedInstanceId,
    this.databaseName,
    this.isLedgerOn,
    this.lastBackupName,
    this.location,
    this.longTermRetentionBackupResourceId,
    required this.managedInstanceName,
    this.recoverableDatabaseId,
    required this.resourceGroupName,
    this.restorableDroppedDatabaseId,
    this.restorePointInTime,
    this.sourceDatabaseId,
    this.storageContainerIdentity,
    this.storageContainerSasToken,
    this.storageContainerUri,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCompleteRestore': ?autoCompleteRestore,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'createMode': ?createMode,
      'crossSubscriptionRestorableDroppedDatabaseId': ?crossSubscriptionRestorableDroppedDatabaseId,
      'crossSubscriptionSourceDatabaseId': ?crossSubscriptionSourceDatabaseId,
      'crossSubscriptionTargetManagedInstanceId': ?crossSubscriptionTargetManagedInstanceId,
      'databaseName': ?databaseName,
      'isLedgerOn': ?isLedgerOn,
      'lastBackupName': ?lastBackupName,
      'location': ?location,
      'longTermRetentionBackupResourceId': ?longTermRetentionBackupResourceId,
      'managedInstanceName': managedInstanceName,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'resourceGroupName': resourceGroupName,
      'restorableDroppedDatabaseId': ?restorableDroppedDatabaseId,
      'restorePointInTime': ?restorePointInTime,
      'sourceDatabaseId': ?sourceDatabaseId,
      'storageContainerIdentity': ?storageContainerIdentity,
      'storageContainerSasToken': ?storageContainerSasToken,
      'storageContainerUri': ?storageContainerUri,
      'tags': ?tags,
    };
  }

  factory ManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseArgs(
      autoCompleteRestore: (() { final guardedValue = map['autoCompleteRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      catalogCollation: (() { final guardedValue = map['catalogCollation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      crossSubscriptionRestorableDroppedDatabaseId: (() { final guardedValue = map['crossSubscriptionRestorableDroppedDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossSubscriptionSourceDatabaseId: (() { final guardedValue = map['crossSubscriptionSourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossSubscriptionTargetManagedInstanceId: (() { final guardedValue = map['crossSubscriptionTargetManagedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isLedgerOn: (() { final guardedValue = map['isLedgerOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastBackupName: (() { final guardedValue = map['lastBackupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longTermRetentionBackupResourceId: (() { final guardedValue = map['longTermRetentionBackupResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceName: pulumi.Input.fromValue(map['managedInstanceName'] as String),
      recoverableDatabaseId: (() { final guardedValue = map['recoverableDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorableDroppedDatabaseId: (() { final guardedValue = map['restorableDroppedDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabaseId: (() { final guardedValue = map['sourceDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerIdentity: (() { final guardedValue = map['storageContainerIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerSasToken: (() { final guardedValue = map['storageContainerSasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerUri: (() { final guardedValue = map['storageContainerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
