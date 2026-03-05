// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_collection_autoscale_settings.dart';
import 'mongo_collection_index.dart';

/// {@template pulumi_cosmosdb_mongo_collection_mongo_collection_args_doc}
/// The set of arguments for MongoCollection.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_collection_mongo_collection_args_doc}
class MongoCollectionArgs {
  /// The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  ///
  /// &gt; **Note:** Switching between autoscale and manual throughput is not supported via this provider and must be completed via the Azure Portal and refreshed.
  final pulumi.Input<MongoCollectionAutoscaleSettings>? autoscaleSettings;
  /// The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The default Time To Live in seconds. If the value is `-1`, items are not automatically expired.
  final pulumi.Input<int>? defaultTtlSeconds;
  /// One or more `index` blocks as defined below.
  final pulumi.Input<List<MongoCollectionIndex>>? indices;
  /// Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created.
  final pulumi.Input<String>? shardKey;
  /// The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  final pulumi.Input<int>? throughput;

  /// Creates a new [MongoCollectionArgs].
  /// [accountName] The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  /// [analyticalStorageTtl] The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time.
  /// [autoscaleSettings] An `autoscale_settings` block as defined below. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  /// [databaseName] The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  /// [defaultTtlSeconds] The default Time To Live in seconds. If the value is `-1`, items are not automatically expired.
  /// [indices] One or more `index` blocks as defined below.
  /// [name] Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created.
  /// [shardKey] The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created.
  /// [throughput] The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply.
  MongoCollectionArgs({
    required this.accountName,
    this.analyticalStorageTtl,
    this.autoscaleSettings,
    required this.databaseName,
    this.defaultTtlSeconds,
    this.indices,
    this.name,
    required this.resourceGroupName,
    this.shardKey,
    this.throughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'autoscaleSettings': ?pulumi.Input.mapOptionalInputValue<MongoCollectionAutoscaleSettings, Map<String, dynamic>>(autoscaleSettings, (value) => value.toMap()),
      'databaseName': databaseName,
      'defaultTtlSeconds': ?defaultTtlSeconds,
      'indices': ?pulumi.Input.mapOptionalInputValue<List<MongoCollectionIndex>, List<Map<String, dynamic>>>(indices, (value) => pulumi.Input.encodeList<MongoCollectionIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'shardKey': ?shardKey,
      'throughput': ?throughput,
    };
  }

  factory MongoCollectionArgs.fromMap(Map<String, dynamic> map) {
    return MongoCollectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      analyticalStorageTtl: (() { final guardedValue = map['analyticalStorageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoscaleSettings: (() { final guardedValue = map['autoscaleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoCollectionAutoscaleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      defaultTtlSeconds: (() { final guardedValue = map['defaultTtlSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      indices: (() { final guardedValue = map['indices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MongoCollectionIndex>(guardedValue, (value) => MongoCollectionIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shardKey: (() { final guardedValue = map['shardKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

