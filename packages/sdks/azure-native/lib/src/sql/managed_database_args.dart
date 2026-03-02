// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_database_args_doc}
/// The set of arguments for ManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_database_args_doc}
class ManagedDatabaseArgs {
  /// Whether to auto complete restore of this managed database.
  final pulumi.Input<bool>? autoCompleteRestore;
  /// Collation of the metadata catalog.
  final pulumi.Input<String>? catalogCollation;
  /// Collation of the managed database.
  final pulumi.Input<String>? collation;
  /// Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
  final pulumi.Input<String>? createMode;
  /// The restorable cross-subscription dropped database resource id to restore when creating this database.
  final pulumi.Input<String>? crossSubscriptionRestorableDroppedDatabaseId;
  /// The resource identifier of the cross-subscription source database associated with create operation of this database.
  final pulumi.Input<String>? crossSubscriptionSourceDatabaseId;
  /// Target managed instance id used in cross-subscription restore.
  final pulumi.Input<String>? crossSubscriptionTargetManagedInstanceId;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final pulumi.Input<bool>? isLedgerOn;
  /// Last backup file name for restore of this managed database.
  final pulumi.Input<String>? lastBackupName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the Long Term Retention backup to be used for restore of this managed database.
  final pulumi.Input<String>? longTermRetentionBackupResourceId;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The resource identifier of the recoverable database associated with create operation of this database.
  final pulumi.Input<String>? recoverableDatabaseId;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The restorable dropped database resource id to restore when creating this database.
  final pulumi.Input<String>? restorableDroppedDatabaseId;
  /// Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// The resource identifier of the source database associated with create operation of this database.
  final pulumi.Input<String>? sourceDatabaseId;
  /// Conditional. If createMode is RestoreExternalBackup, this value is used. Specifies the identity used for storage container authentication. Can be 'SharedAccessSignature' or 'ManagedIdentity'; if not specified 'SharedAccessSignature' is assumed.
  final pulumi.Input<String>? storageContainerIdentity;
  /// Conditional. If createMode is RestoreExternalBackup and storageContainerIdentity is not ManagedIdentity, this value is required. Specifies the storage container sas token.
  final pulumi.Input<String>? storageContainerSasToken;
  /// Conditional. If createMode is RestoreExternalBackup, this value is required. Specifies the uri of the storage container where backups for this restore are stored.
  final pulumi.Input<String>? storageContainerUri;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
  ManagedDatabaseArgs({
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
      autoCompleteRestore: map['autoCompleteRestore'] == null ? null : (map['autoCompleteRestore']! as bool).input(),
      catalogCollation: map['catalogCollation'] == null ? null : (map['catalogCollation']! as String).input(),
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      crossSubscriptionRestorableDroppedDatabaseId: map['crossSubscriptionRestorableDroppedDatabaseId'] == null ? null : (map['crossSubscriptionRestorableDroppedDatabaseId']! as String).input(),
      crossSubscriptionSourceDatabaseId: map['crossSubscriptionSourceDatabaseId'] == null ? null : (map['crossSubscriptionSourceDatabaseId']! as String).input(),
      crossSubscriptionTargetManagedInstanceId: map['crossSubscriptionTargetManagedInstanceId'] == null ? null : (map['crossSubscriptionTargetManagedInstanceId']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      isLedgerOn: map['isLedgerOn'] == null ? null : (map['isLedgerOn']! as bool).input(),
      lastBackupName: map['lastBackupName'] == null ? null : (map['lastBackupName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      longTermRetentionBackupResourceId: map['longTermRetentionBackupResourceId'] == null ? null : (map['longTermRetentionBackupResourceId']! as String).input(),
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      recoverableDatabaseId: map['recoverableDatabaseId'] == null ? null : (map['recoverableDatabaseId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restorableDroppedDatabaseId: map['restorableDroppedDatabaseId'] == null ? null : (map['restorableDroppedDatabaseId']! as String).input(),
      restorePointInTime: map['restorePointInTime'] == null ? null : (map['restorePointInTime']! as String).input(),
      sourceDatabaseId: map['sourceDatabaseId'] == null ? null : (map['sourceDatabaseId']! as String).input(),
      storageContainerIdentity: map['storageContainerIdentity'] == null ? null : (map['storageContainerIdentity']! as String).input(),
      storageContainerSasToken: map['storageContainerSasToken'] == null ? null : (map['storageContainerSasToken']! as String).input(),
      storageContainerUri: map['storageContainerUri'] == null ? null : (map['storageContainerUri']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

