// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_synapse_sql_pool_args_doc}
/// The set of arguments for SqlPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_args_doc}
class SqlPoolArgs {
  /// Collation mode
  final pulumi.Input<String>? collation;

  /// Specifies the mode of sql pool creation.
  ///
  /// Default: regular sql pool creation.
  ///
  /// PointInTimeRestore: Creates a sql pool by restoring a point in time backup of an existing sql pool. sourceDatabaseId must be specified as the resource ID of the existing sql pool, and restorePointInTime must be specified.
  ///
  /// Recovery: Creates a sql pool by a geo-replicated backup. sourceDatabaseId  must be specified as the recoverableDatabaseId to restore.
  ///
  /// Restore: Creates a sql pool by restoring a backup of a deleted sql  pool. SourceDatabaseId should be the sql pool's original resource ID. SourceDatabaseId and sourceDatabaseDeletionDate must be specified.
  final pulumi.Input<String>? createMode;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Maximum size in bytes
  final pulumi.Input<double>? maxSizeBytes;

  /// Resource state
  final pulumi.Input<String>? provisioningState;

  /// Backup database to restore from
  final pulumi.Input<String>? recoverableDatabaseId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Snapshot time to restore
  final pulumi.Input<String>? restorePointInTime;

  /// SQL pool SKU
  final pulumi.Input<Sku>? sku;

  /// Specifies the time that the sql pool was deleted
  final pulumi.Input<String>? sourceDatabaseDeletionDate;

  /// Source database to create from
  final pulumi.Input<String>? sourceDatabaseId;

  /// SQL pool name
  final pulumi.Input<String>? sqlPoolName;

  /// The storage account type used to store backups for this sql pool.
  final pulumi.Input<String>? storageAccountType;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolArgs].
  /// [collation] Collation mode
  /// [createMode] Specifies the mode of sql pool creation.
  /// [location] The geo-location where the resource lives
  /// [maxSizeBytes] Maximum size in bytes
  /// [provisioningState] Resource state
  /// [recoverableDatabaseId] Backup database to restore from
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointInTime] Snapshot time to restore
  /// [sku] SQL pool SKU
  /// [sourceDatabaseDeletionDate] Specifies the time that the sql pool was deleted
  /// [sourceDatabaseId] Source database to create from
  /// [sqlPoolName] SQL pool name
  /// [storageAccountType] The storage account type used to store backups for this sql pool.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  SqlPoolArgs({
    this.collation,
    this.createMode,
    this.location,
    this.maxSizeBytes,
    this.provisioningState,
    this.recoverableDatabaseId,
    required this.resourceGroupName,
    this.restorePointInTime,
    this.sku,
    this.sourceDatabaseDeletionDate,
    this.sourceDatabaseId,
    this.sqlPoolName,
    this.storageAccountType,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'createMode': ?createMode,
      'location': ?location,
      'maxSizeBytes': ?maxSizeBytes,
      'provisioningState': ?provisioningState,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'resourceGroupName': resourceGroupName,
      'restorePointInTime': ?restorePointInTime,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'sourceDatabaseDeletionDate': ?sourceDatabaseDeletionDate,
      'sourceDatabaseId': ?sourceDatabaseId,
      'sqlPoolName': ?sqlPoolName,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolArgs(
      collation: (() {
        final guardedValue = map['collation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createMode: (() {
        final guardedValue = map['createMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxSizeBytes: (() {
        final guardedValue = map['maxSizeBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoverableDatabaseId: (() {
        final guardedValue = map['recoverableDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      restorePointInTime: (() {
        final guardedValue = map['restorePointInTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sourceDatabaseDeletionDate: (() {
        final guardedValue = map['sourceDatabaseDeletionDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceDatabaseId: (() {
        final guardedValue = map['sourceDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlPoolName: (() {
        final guardedValue = map['sqlPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountType: (() {
        final guardedValue = map['storageAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
