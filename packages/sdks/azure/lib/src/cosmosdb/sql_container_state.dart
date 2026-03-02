// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_container_autoscale_settings.dart';
import 'sql_container_conflict_resolution_policy.dart';
import 'sql_container_indexing_policy.dart';
import 'sql_container_unique_key.dart';

/// Input properties used for looking up and filtering SqlContainer resources.
class SqlContainerState {
  /// The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<SqlContainerAutoscaleSettings>? autoscaleSettings;
  /// A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SqlContainerConflictResolutionPolicy>? conflictResolutionPolicy;
  /// The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  final pulumi.Input<int>? defaultTtl;
  /// An `indexing_policy` block as defined below.
  final pulumi.Input<SqlContainerIndexingPolicy>? indexingPolicy;
  /// Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? partitionKeyKind;
  /// A list of partition key paths. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? partitionKeyPaths;
  /// Define a partition key version. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  ///
  /// > **Note:** If `partition_key_version` is not specified when creating a new resource, you can update `partition_key_version` to `1`, updating to `2` forces a new resource to be created.
  final pulumi.Input<int>? partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual resource destroy-apply.
  final pulumi.Input<int>? throughput;
  /// One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<SqlContainerUniqueKey>>? uniqueKeys;

  /// Creates a new [SqlContainerState].
  /// [accountName] The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
  /// [analyticalStorageTtl] The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [conflictResolutionPolicy] A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
  /// [defaultTtl] The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  /// [indexingPolicy] An `indexing_policy` block as defined below.
  /// [name] Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created.
  /// [partitionKeyKind] Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created.
  /// [partitionKeyPaths] A list of partition key paths. Changing this forces a new resource to be created.
  /// [partitionKeyVersion] Define a partition key version. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual resource destroy-apply.
  /// [uniqueKeys] One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  SqlContainerState({
    this.accountName,
    this.analyticalStorageTtl,
    this.autoscaleSettings,
    this.conflictResolutionPolicy,
    this.databaseName,
    this.defaultTtl,
    this.indexingPolicy,
    this.name,
    this.partitionKeyKind,
    this.partitionKeyPaths,
    this.partitionKeyVersion,
    this.resourceGroupName,
    this.throughput,
    this.uniqueKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<SqlContainerAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<SqlContainerConflictResolutionPolicy, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'databaseName': ?databaseName,
      'defaultTtl': ?defaultTtl,
      'indexingPolicy': ?pulumi.Input.mapOptionalInputValue<SqlContainerIndexingPolicy, Map<String, dynamic>>(indexingPolicy, (value) => value.toMap()),
      'name': ?name,
      'partitionKeyKind': ?partitionKeyKind,
      'partitionKeyPaths': ?partitionKeyPaths,
      'partitionKeyVersion': ?partitionKeyVersion,
      'resourceGroupName': ?resourceGroupName,
      'throughput': ?throughput,
      'uniqueKeys': ?pulumi.Input.mapOptionalInputValue<List<SqlContainerUniqueKey>, List<Map<String, dynamic>>>(uniqueKeys, (value) => pulumi.Input.encodeList<SqlContainerUniqueKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlContainerState.fromMap(Map<String, dynamic> map) {
    return SqlContainerState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl'] as int).input(),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : (SqlContainerAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())).input(),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : (SqlContainerConflictResolutionPolicy.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>())).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl'] as int).input(),
      indexingPolicy: map['indexingPolicy'] == null ? null : (SqlContainerIndexingPolicy.fromMap((map['indexingPolicy'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partitionKeyKind: map['partitionKeyKind'] == null ? null : (map['partitionKeyKind'] as String).input(),
      partitionKeyPaths: map['partitionKeyPaths'] == null ? null : ((map['partitionKeyPaths'] as List).cast<String>()).input(),
      partitionKeyVersion: map['partitionKeyVersion'] == null ? null : (map['partitionKeyVersion'] as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      uniqueKeys: map['uniqueKeys'] == null ? null : (pulumi.Input.decodeList<SqlContainerUniqueKey>(map['uniqueKeys'], (value) => SqlContainerUniqueKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

