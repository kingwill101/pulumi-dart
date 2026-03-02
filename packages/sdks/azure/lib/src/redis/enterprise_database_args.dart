// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_database_module.dart';

/// {@template pulumi_redis_enterprise_database_enterprise_database_args_doc}
/// The set of arguments for EnterpriseDatabase.
/// {@endtemplate}
/// {@macro pulumi_redis_enterprise_database_enterprise_database_args_doc}
class EnterpriseDatabaseArgs {
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`. Changing this forces a new Redis Enterprise Database to be created.
  final pulumi.Input<String>? clientProtocol;
  /// The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created.
  final pulumi.Input<String> clusterId;
  /// Clustering policy Specified at create time. Possible values are `EnterpriseCluster` and `OSSCluster`. Defaults to `OSSCluster`. Changing this forces a new Redis Enterprise Database to be created.
  final pulumi.Input<String>? clusteringPolicy;
  /// Redis eviction policy possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Changing this forces a new Redis Enterprise Database to be created. Defaults to `VolatileLRU`.
  final pulumi.Input<String>? evictionPolicy;
  /// Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created.
  final pulumi.Input<String>? linkedDatabaseGroupNickname;
  /// A list of database resources to link with this database with a maximum of 5.
  ///
  /// > **Note:** Only the newly created databases can be added to an existing geo-replication group. Existing regular databases or recreated databases cannot be added to the existing geo-replication group. Any linked database removed from the list will be forcefully unlinked. The only recommended operation is to delete after force-unlink and the recommended scenario of force-unlink is region outage. The database cannot be linked again after force-unlink.
  final pulumi.Input<List<String>>? linkedDatabaseIds;
  /// A `module` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only `RediSearch` and `RedisJSON` modules are allowed with geo-replication
  final pulumi.Input<List<EnterpriseDatabaseModule>>? modules;
  /// The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is `default`. Defaults to `default`. Changing this forces a new Redis Enterprise Database to be created.
  final pulumi.Input<String>? name;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to `10000`.
  final pulumi.Input<int>? port;

  /// Creates a new [EnterpriseDatabaseArgs].
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`. Changing this forces a new Redis Enterprise Database to be created.
  /// [clusterId] The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created.
  /// [clusteringPolicy] Clustering policy Specified at create time. Possible values are `EnterpriseCluster` and `OSSCluster`. Defaults to `OSSCluster`. Changing this forces a new Redis Enterprise Database to be created.
  /// [evictionPolicy] Redis eviction policy possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Changing this forces a new Redis Enterprise Database to be created. Defaults to `VolatileLRU`.
  /// [linkedDatabaseGroupNickname] Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created.
  /// [linkedDatabaseIds] A list of database resources to link with this database with a maximum of 5.
  /// [modules] A `module` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is `default`. Defaults to `default`. Changing this forces a new Redis Enterprise Database to be created.
  /// [port] TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to `10000`.
  EnterpriseDatabaseArgs({
    this.clientProtocol,
    required this.clusterId,
    this.clusteringPolicy,
    this.evictionPolicy,
    this.linkedDatabaseGroupNickname,
    this.linkedDatabaseIds,
    this.modules,
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientProtocol': ?clientProtocol,
      'clusterId': clusterId,
      'clusteringPolicy': ?clusteringPolicy,
      'evictionPolicy': ?evictionPolicy,
      'linkedDatabaseGroupNickname': ?linkedDatabaseGroupNickname,
      'linkedDatabaseIds': ?linkedDatabaseIds,
      'modules': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseDatabaseModule>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<EnterpriseDatabaseModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'port': ?port,
    };
  }

  factory EnterpriseDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseDatabaseArgs(
      clientProtocol: map['clientProtocol'] == null ? null : (map['clientProtocol']! as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      clusteringPolicy: map['clusteringPolicy'] == null ? null : (map['clusteringPolicy']! as String).input(),
      evictionPolicy: map['evictionPolicy'] == null ? null : (map['evictionPolicy']! as String).input(),
      linkedDatabaseGroupNickname: map['linkedDatabaseGroupNickname'] == null ? null : (map['linkedDatabaseGroupNickname']! as String).input(),
      linkedDatabaseIds: map['linkedDatabaseIds'] == null ? null : ((map['linkedDatabaseIds']! as List).cast<String>()).input(),
      modules: map['modules'] == null ? null : (pulumi.Input.decodeList<EnterpriseDatabaseModule>(map['modules']!, (value) => EnterpriseDatabaseModule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

