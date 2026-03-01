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
    pulumi.Output<String>? collation,
    pulumi.Output<String>? createMode,
    pulumi.Output<String>? location,
    pulumi.Output<double>? maxSizeBytes,
    pulumi.Output<String>? provisioningState,
    pulumi.Output<String>? recoverableDatabaseId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? restorePointInTime,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? sourceDatabaseDeletionDate,
    pulumi.Output<String>? sourceDatabaseId,
    pulumi.Output<String>? sqlPoolName,
    pulumi.Output<String>? storageAccountType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      collation = pulumi.Input.asOptionalInput<String>(collation),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxSizeBytes = pulumi.Input.asOptionalInput<double>(maxSizeBytes),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      recoverableDatabaseId = pulumi.Input.asOptionalInput<String>(recoverableDatabaseId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorePointInTime = pulumi.Input.asOptionalInput<String>(restorePointInTime),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      sourceDatabaseDeletionDate = pulumi.Input.asOptionalInput<String>(sourceDatabaseDeletionDate),
      sourceDatabaseId = pulumi.Input.asOptionalInput<String>(sourceDatabaseId),
      sqlPoolName = pulumi.Input.asOptionalInput<String>(sqlPoolName),
      storageAccountType = pulumi.Input.asOptionalInput<String>(storageAccountType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
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
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxSizeBytes: map['maxSizeBytes'] == null ? null : pulumi.Output.create<double>(map['maxSizeBytes'] as double),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      recoverableDatabaseId: map['recoverableDatabaseId'] == null ? null : pulumi.Output.create<String>(map['recoverableDatabaseId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restorePointInTime: map['restorePointInTime'] == null ? null : pulumi.Output.create<String>(map['restorePointInTime'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sourceDatabaseDeletionDate: map['sourceDatabaseDeletionDate'] == null ? null : pulumi.Output.create<String>(map['sourceDatabaseDeletionDate'] as String),
      sourceDatabaseId: map['sourceDatabaseId'] == null ? null : pulumi.Output.create<String>(map['sourceDatabaseId'] as String),
      sqlPoolName: map['sqlPoolName'] == null ? null : pulumi.Output.create<String>(map['sqlPoolName'] as String),
      storageAccountType: map['storageAccountType'] == null ? null : pulumi.Output.create<String>(map['storageAccountType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

