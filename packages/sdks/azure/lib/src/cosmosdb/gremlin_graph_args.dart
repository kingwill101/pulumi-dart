// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_autoscale_settings.dart';
import 'gremlin_graph_conflict_resolution_policy.dart';
import 'gremlin_graph_index_policy.dart';
import 'gremlin_graph_unique_key.dart';

/// {@template pulumi_cosmosdb_gremlin_graph_gremlin_graph_args_doc}
/// The set of arguments for GremlinGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_gremlin_graph_gremlin_graph_args_doc}
class GremlinGraphArgs {
  /// The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire.
  ///
  /// &gt; **Note:** Disabling `analytical_storage_ttl` will force a new resource to be created since it can't be disabled once it's enabled.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<GremlinGraphAutoscaleSettings>? autoscaleSettings;
  /// A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<GremlinGraphConflictResolutionPolicy>? conflictResolutionPolicy;
  /// The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire.
  final pulumi.Input<int>? defaultTtl;
  /// The configuration of the indexing policy. One or more `index_policy` blocks as defined below.
  final pulumi.Input<GremlinGraphIndexPolicy>? indexPolicy;
  /// Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Define a partition key. Changing this forces a new resource to be created.
  final pulumi.Input<String> partitionKeyPath;
  /// Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  final pulumi.Input<int>? partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  final pulumi.Input<int>? throughput;
  /// One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GremlinGraphUniqueKey>>? uniqueKeys;

  /// Creates a new [GremlinGraphArgs].
  /// [accountName] The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created.
  /// [analyticalStorageTtl] The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set.
  /// [conflictResolutionPolicy] A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  /// [defaultTtl] The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire.
  /// [indexPolicy] The configuration of the indexing policy. One or more `index_policy` blocks as defined below.
  /// [name] Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created.
  /// [partitionKeyPath] Define a partition key. Changing this forces a new resource to be created.
  /// [partitionKeyVersion] Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  /// [throughput] The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  /// [uniqueKeys] One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  GremlinGraphArgs({
    required this.accountName,
    this.analyticalStorageTtl,
    this.autoscaleSettings,
    this.conflictResolutionPolicy,
    required this.databaseName,
    this.defaultTtl,
    this.indexPolicy,
    this.name,
    required this.partitionKeyPath,
    this.partitionKeyVersion,
    required this.resourceGroupName,
    this.throughput,
    this.uniqueKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<GremlinGraphAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<GremlinGraphConflictResolutionPolicy, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'databaseName': databaseName,
      'defaultTtl': ?defaultTtl,
      'indexPolicy': ?pulumi.Input.mapOptionalInputValue<GremlinGraphIndexPolicy, Map<String, dynamic>>(indexPolicy, (value) => value.toMap()),
      'name': ?name,
      'partitionKeyPath': partitionKeyPath,
      'partitionKeyVersion': ?partitionKeyVersion,
      'resourceGroupName': resourceGroupName,
      'throughput': ?throughput,
      'uniqueKeys': ?pulumi.Input.mapOptionalInputValue<List<GremlinGraphUniqueKey>, List<Map<String, dynamic>>>(uniqueKeys, (value) => pulumi.Input.encodeList<GremlinGraphUniqueKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GremlinGraphArgs.fromMap(Map<String, dynamic> map) {
    return GremlinGraphArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      analyticalStorageTtl: (() { final guardedValue = map['analyticalStorageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GremlinGraphAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conflictResolutionPolicy: (() { final guardedValue = map['conflictResolutionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GremlinGraphConflictResolutionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      indexPolicy: (() { final guardedValue = map['indexPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GremlinGraphIndexPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyPath: pulumi.Input.fromValue(map['partitionKeyPath'] as String),
      partitionKeyVersion: (() { final guardedValue = map['partitionKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uniqueKeys: (() { final guardedValue = map['uniqueKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GremlinGraphUniqueKey>(guardedValue, (value) => GremlinGraphUniqueKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

