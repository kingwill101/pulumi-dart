// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_restore.dart';

/// {@template pulumi_synapse_sql_pool_sql_pool_args_doc}
/// The set of arguments for SqlPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_sql_pool_args_doc}
class SqlPoolArgs {
  /// The name of the collation to use with this pool, only applicable when `createMode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? collation;
  /// Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? createMode;
  /// Is transparent data encryption enabled?
  final pulumi.Input<bool>? dataEncrypted;
  /// Is geo-backup policy enabled? Defaults to `true`.
  final pulumi.Input<bool>? geoBackupPolicyEnabled;
  /// The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `createMode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? recoveryDatabaseId;
  /// A `restore` block as defined below. Only applicable when `createMode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<SqlPoolRestore>? restore;
  /// Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`.
  final pulumi.Input<String> skuName;
  /// The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String> storageAccountType;
  /// The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String> synapseWorkspaceId;
  /// A mapping of tags which should be assigned to the Synapse SQL Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlPoolArgs].
  /// [collation] The name of the collation to use with this pool, only applicable when `createMode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created.
  /// [createMode] Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created.
  /// [dataEncrypted] Is transparent data encryption enabled?
  /// [geoBackupPolicyEnabled] Is geo-backup policy enabled? Defaults to `true`.
  /// [name] The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created.
  /// [recoveryDatabaseId] The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `createMode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created.
  /// [restore] A `restore` block as defined below. Only applicable when `createMode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created.
  /// [skuName] Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`.
  /// [storageAccountType] The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created.
  /// [synapseWorkspaceId] The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse SQL Pool.
  const SqlPoolArgs({
    this.collation,
    this.createMode,
    this.dataEncrypted,
    this.geoBackupPolicyEnabled,
    this.name,
    this.recoveryDatabaseId,
    this.restore,
    required this.skuName,
    required this.storageAccountType,
    required this.synapseWorkspaceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'createMode': ?createMode,
      'dataEncrypted': ?dataEncrypted,
      'geoBackupPolicyEnabled': ?geoBackupPolicyEnabled,
      'name': ?name,
      'recoveryDatabaseId': ?recoveryDatabaseId,
      'restore': ?pulumi.Input.mapOptionalInputValue<SqlPoolRestore, Map<String, dynamic>>(restore, (value) => value.toMap()),
      'skuName': skuName,
      'storageAccountType': storageAccountType,
      'synapseWorkspaceId': synapseWorkspaceId,
      'tags': ?tags,
    };
  }

  factory SqlPoolArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolArgs(
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataEncrypted: (() { final guardedValue = map['dataEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geoBackupPolicyEnabled: (() { final guardedValue = map['geoBackupPolicyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryDatabaseId: (() { final guardedValue = map['recoveryDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlPoolRestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storageAccountType: pulumi.Input.fromValue(map['storageAccountType'] as String),
      synapseWorkspaceId: pulumi.Input.fromValue(map['synapseWorkspaceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
