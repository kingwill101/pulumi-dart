// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_autoscale_settings.dart';
import 'gremlin_graph_conflict_resolution_policy.dart';
import 'gremlin_graph_index_policy.dart';
import 'gremlin_graph_unique_key.dart';

/// Input properties used for looking up and filtering GremlinGraph resources.
class GremlinGraphState {
  /// The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire.
  ///
  /// > **Note:** Disabling `analytical_storage_ttl` will force a new resource to be created since it can't be disabled once it's enabled.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set.
  ///
  /// > **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<GremlinGraphAutoscaleSettings>? autoscaleSettings;
  /// A `conflict_resolution_policy` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<GremlinGraphConflictResolutionPolicy>? conflictResolutionPolicy;
  /// The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire.
  final pulumi.Input<int>? defaultTtl;
  /// The configuration of the indexing policy. One or more `index_policy` blocks as defined below.
  final pulumi.Input<GremlinGraphIndexPolicy>? indexPolicy;
  /// Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Define a partition key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? partitionKeyPath;
  /// Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys.
  final pulumi.Input<int>? partitionKeyVersion;
  /// The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual destroy-apply.
  final pulumi.Input<int>? throughput;
  /// One or more `unique_key` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<GremlinGraphUniqueKey>>? uniqueKeys;

  /// Creates a new [GremlinGraphState].
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
  GremlinGraphState({
    pulumi.Output<String>? accountName,
    pulumi.Output<int>? analyticalStorageTtl,
    pulumi.Output<GremlinGraphAutoscaleSettings>? autoscaleSettings,
    pulumi.Output<GremlinGraphConflictResolutionPolicy>? conflictResolutionPolicy,
    pulumi.Output<String>? databaseName,
    pulumi.Output<int>? defaultTtl,
    pulumi.Output<GremlinGraphIndexPolicy>? indexPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKeyPath,
    pulumi.Output<int>? partitionKeyVersion,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? throughput,
    pulumi.Output<List<GremlinGraphUniqueKey>>? uniqueKeys,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      analyticalStorageTtl = pulumi.Input.asOptionalInput<int>(analyticalStorageTtl),
      autoscaleSettings = pulumi.Input.asOptionalInput<GremlinGraphAutoscaleSettings>(autoscaleSettings),
      conflictResolutionPolicy = pulumi.Input.asOptionalInput<GremlinGraphConflictResolutionPolicy>(conflictResolutionPolicy),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      defaultTtl = pulumi.Input.asOptionalInput<int>(defaultTtl),
      indexPolicy = pulumi.Input.asOptionalInput<GremlinGraphIndexPolicy>(indexPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKeyPath = pulumi.Input.asOptionalInput<String>(partitionKeyPath),
      partitionKeyVersion = pulumi.Input.asOptionalInput<int>(partitionKeyVersion),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      throughput = pulumi.Input.asOptionalInput<int>(throughput),
      uniqueKeys = pulumi.Input.asOptionalInput<List<GremlinGraphUniqueKey>>(uniqueKeys);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<GremlinGraphAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'conflictResolutionPolicy': ?pulumi.Input.mapOptionalInputValue<GremlinGraphConflictResolutionPolicy, Map<String, dynamic>>(conflictResolutionPolicy, (value) => value.toMap()),
      'databaseName': ?databaseName,
      'defaultTtl': ?defaultTtl,
      'indexPolicy': ?pulumi.Input.mapOptionalInputValue<GremlinGraphIndexPolicy, Map<String, dynamic>>(indexPolicy, (value) => value.toMap()),
      'name': ?name,
      'partitionKeyPath': ?partitionKeyPath,
      'partitionKeyVersion': ?partitionKeyVersion,
      'resourceGroupName': ?resourceGroupName,
      'throughput': ?throughput,
      'uniqueKeys': ?pulumi.Input.mapOptionalInputValue<List<GremlinGraphUniqueKey>, List<Map<String, dynamic>>>(uniqueKeys, (value) => pulumi.Input.encodeList<GremlinGraphUniqueKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GremlinGraphState.fromMap(Map<String, dynamic> map) {
    return GremlinGraphState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : pulumi.Output.create<int>(map['analyticalStorageTtl'] as int),
      autoscaleSettings: map['autoscaleSettings'] == null ? null : pulumi.Output.create<GremlinGraphAutoscaleSettings>(GremlinGraphAutoscaleSettings.fromMap((map['autoscaleSettings'] as Map).cast<String, dynamic>())),
      conflictResolutionPolicy: map['conflictResolutionPolicy'] == null ? null : pulumi.Output.create<GremlinGraphConflictResolutionPolicy>(GremlinGraphConflictResolutionPolicy.fromMap((map['conflictResolutionPolicy'] as Map).cast<String, dynamic>())),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      defaultTtl: map['defaultTtl'] == null ? null : pulumi.Output.create<int>(map['defaultTtl'] as int),
      indexPolicy: map['indexPolicy'] == null ? null : pulumi.Output.create<GremlinGraphIndexPolicy>(GremlinGraphIndexPolicy.fromMap((map['indexPolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKeyPath: map['partitionKeyPath'] == null ? null : pulumi.Output.create<String>(map['partitionKeyPath'] as String),
      partitionKeyVersion: map['partitionKeyVersion'] == null ? null : pulumi.Output.create<int>(map['partitionKeyVersion'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      throughput: map['throughput'] == null ? null : pulumi.Output.create<int>(map['throughput'] as int),
      uniqueKeys: map['uniqueKeys'] == null ? null : pulumi.Output.create<List<GremlinGraphUniqueKey>>(pulumi.Input.decodeList<GremlinGraphUniqueKey>(map['uniqueKeys'], (value) => GremlinGraphUniqueKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

