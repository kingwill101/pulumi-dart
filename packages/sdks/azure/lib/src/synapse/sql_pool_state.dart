// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_restore.dart';

/// Input properties used for looking up and filtering SqlPool resources.
class SqlPoolState {
  /// The name of the collation to use with this pool, only applicable when `create_mode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? collation;
  /// Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? createMode;
  /// Is transparent data encryption enabled?
  final pulumi.Input<bool>? dataEncrypted;
  /// Is geo-backup policy enabled? Defaults to `true`.
  final pulumi.Input<bool>? geoBackupPolicyEnabled;
  /// The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `create_mode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? recoveryDatabaseId;
  /// A `restore` block as defined below. Only applicable when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<SqlPoolRestore>? restore;
  /// Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`.
  final pulumi.Input<String>? skuName;
  /// The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? storageAccountType;
  /// The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String>? synapseWorkspaceId;
  /// A mapping of tags which should be assigned to the Synapse SQL Pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlPoolState].
  /// [collation] The name of the collation to use with this pool, only applicable when `create_mode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created.
  /// [createMode] Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created.
  /// [dataEncrypted] Is transparent data encryption enabled?
  /// [geoBackupPolicyEnabled] Is geo-backup policy enabled? Defaults to `true`.
  /// [name] The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created.
  /// [recoveryDatabaseId] The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `create_mode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created.
  /// [restore] A `restore` block as defined below. Only applicable when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created.
  /// [skuName] Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`.
  /// [storageAccountType] The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created.
  /// [synapseWorkspaceId] The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse SQL Pool.
  SqlPoolState({
    pulumi.Output<String>? collation,
    pulumi.Output<String>? createMode,
    pulumi.Output<bool>? dataEncrypted,
    pulumi.Output<bool>? geoBackupPolicyEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryDatabaseId,
    pulumi.Output<SqlPoolRestore>? restore,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? storageAccountType,
    pulumi.Output<String>? synapseWorkspaceId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      collation = pulumi.Input.asOptionalInput<String>(collation),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      dataEncrypted = pulumi.Input.asOptionalInput<bool>(dataEncrypted),
      geoBackupPolicyEnabled = pulumi.Input.asOptionalInput<bool>(geoBackupPolicyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryDatabaseId = pulumi.Input.asOptionalInput<String>(recoveryDatabaseId),
      restore = pulumi.Input.asOptionalInput<SqlPoolRestore>(restore),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      storageAccountType = pulumi.Input.asOptionalInput<String>(storageAccountType),
      synapseWorkspaceId = pulumi.Input.asOptionalInput<String>(synapseWorkspaceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'createMode': ?createMode,
      'dataEncrypted': ?dataEncrypted,
      'geoBackupPolicyEnabled': ?geoBackupPolicyEnabled,
      'name': ?name,
      'recoveryDatabaseId': ?recoveryDatabaseId,
      'restore': ?pulumi.Input.mapOptionalInputValue<SqlPoolRestore, Map<String, dynamic>>(restore, (value) => value.toMap()),
      'skuName': ?skuName,
      'storageAccountType': ?storageAccountType,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'tags': ?tags,
    };
  }

  factory SqlPoolState.fromMap(Map<String, dynamic> map) {
    return SqlPoolState(
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      dataEncrypted: map['dataEncrypted'] == null ? null : pulumi.Output.create<bool>(map['dataEncrypted'] as bool),
      geoBackupPolicyEnabled: map['geoBackupPolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['geoBackupPolicyEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryDatabaseId: map['recoveryDatabaseId'] == null ? null : pulumi.Output.create<String>(map['recoveryDatabaseId'] as String),
      restore: map['restore'] == null ? null : pulumi.Output.create<SqlPoolRestore>(SqlPoolRestore.fromMap((map['restore'] as Map).cast<String, dynamic>())),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      storageAccountType: map['storageAccountType'] == null ? null : pulumi.Output.create<String>(map['storageAccountType'] as String),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

