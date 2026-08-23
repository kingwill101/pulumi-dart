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
  /// An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<SqlContainerAutoscaleSettings>? autoscaleSettings;
  /// A `conflictResolutionPolicy` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SqlContainerConflictResolutionPolicy>? conflictResolutionPolicy;
  /// The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  final pulumi.Input<int>? defaultTtl;
  /// An `indexingPolicy` block as defined below.
  final pulumi.Input<SqlContainerIndexingPolicy>? indexingPolicy;
  /// Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? partitionKeyKind;
  /// A list of partition key paths. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? partitionKeyPaths;
  /// Define a partition key version. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  ///
  /// &gt; **Note:** If `partitionKeyVersion` is not specified when creating a new resource, you can update `partitionKeyVersion` to `1`, updating to `2` forces a new resource to be created.
  final pulumi.Input<int>? partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual resource destroy-apply.
  final pulumi.Input<int>? throughput;
  /// One or more `uniqueKey` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<SqlContainerUniqueKey>>? uniqueKeys;

  /// Creates a new [SqlContainerState].
  /// [accountName] The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created.
  /// [analyticalStorageTtl] The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  /// [autoscaleSettings] An `autoscaleSettings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [conflictResolutionPolicy] A `conflictResolutionPolicy` blocks as defined below. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created.
  /// [defaultTtl] The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  /// [indexingPolicy] An `indexingPolicy` block as defined below.
  /// [name] Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created.
  /// [partitionKeyKind] Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created.
  /// [partitionKeyPaths] A list of partition key paths. Changing this forces a new resource to be created.
  /// [partitionKeyVersion] Define a partition key version. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual resource destroy-apply.
  /// [uniqueKeys] One or more `uniqueKey` blocks as defined below. Changing this forces a new resource to be created.
  const SqlContainerState({
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
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      analyticalStorageTtl: (() { final guardedValue = map['analyticalStorageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlContainerAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conflictResolutionPolicy: (() { final guardedValue = map['conflictResolutionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlContainerConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      indexingPolicy: (() { final guardedValue = map['indexingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlContainerIndexingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyKind: (() { final guardedValue = map['partitionKeyKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyPaths: (() { final guardedValue = map['partitionKeyPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      partitionKeyVersion: (() { final guardedValue = map['partitionKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uniqueKeys: (() { final guardedValue = map['uniqueKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlContainerUniqueKey>(guardedValue, (value) => SqlContainerUniqueKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
