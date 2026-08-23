// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_redis_default_database_module.dart';

class ManagedRedisDefaultDatabase {
  /// Whether access key authentication is enabled for the database. Defaults to `false`.
  final pulumi.Input<bool>? accessKeysAuthenticationEnabled;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`.
  final pulumi.Input<String>? clientProtocol;
  /// Clustering policy specified at create time. Possible values are `EnterpriseCluster`, `OSSCluster` and `NoCluster`. Defaults to `OSSCluster`.
  ///
  /// &gt; **Note:** Changing `clusteringPolicy` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  final pulumi.Input<String>? clusteringPolicy;
  /// Specifies the Redis eviction policy. Possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Defaults to `VolatileLRU`.
  final pulumi.Input<String>? evictionPolicy;
  /// The name of the geo-replication group. If provided, a geo-replication group will be created for this database with itself as the only member. Use `azure.managedredis.GeoReplication` resource to manage group membership, linking and unlinking. All databases to be linked have to have the same group name. Refer to the [Managed Redis geo-replication documentation](https://learn.microsoft.com/azure/redis/how-to-active-geo-replication) for more information.
  ///
  /// &gt; **Note:** Changing `geoReplicationGroupName` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  final pulumi.Input<String>? geoReplicationGroupName;
  /// The ID of the Managed Redis Database Instance.
  final pulumi.Input<String>? id;
  /// A `module` block as defined below. Refer to [the modules documentation](https://learn.microsoft.com/azure/redis/redis-modules) to learn more.
  final pulumi.Input<List<ManagedRedisDefaultDatabaseModule>>? modules;
  /// The frequency of Append Only File (AOF) backups. The only possible value is `1s`. Providing this value implies AOF persistence method is enabled. Conflicts with `persistenceRedisDatabaseBackupFrequency`, only one persistence method is allowed. Conflicts with `geoReplicationGroupName`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  final pulumi.Input<String>? persistenceAppendOnlyFileBackupFrequency;
  /// The frequency of Redis Database (RDB) backups. Possible values are `1h`, `6h` and `12h`. Providing this value implies RDB persistence method is enabled. Conflicts with `persistenceAppendOnlyFileBackupFrequency`, only one persistence method is allowed. Conflicts with `geoReplicationGroupName`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  final pulumi.Input<String>? persistenceRedisDatabaseBackupFrequency;
  /// TCP port of the database endpoint.
  final pulumi.Input<int>? port;
  /// The Primary Access Key for the Managed Redis Database Instance. Only exported if `accessKeysAuthenticationEnabled` is set to `true`.
  final pulumi.Input<String>? primaryAccessKey;
  /// The Secondary Access Key for the Managed Redis Database Instance. Only exported if `accessKeysAuthenticationEnabled` is set to `true`.
  final pulumi.Input<String>? secondaryAccessKey;

  /// Creates a new [ManagedRedisDefaultDatabase].
  /// [accessKeysAuthenticationEnabled] Whether access key authentication is enabled for the database. Defaults to `false`.
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`.
  /// [clusteringPolicy] Clustering policy specified at create time. Possible values are `EnterpriseCluster`, `OSSCluster` and `NoCluster`. Defaults to `OSSCluster`.
  /// [evictionPolicy] Specifies the Redis eviction policy. Possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Defaults to `VolatileLRU`.
  /// [geoReplicationGroupName] The name of the geo-replication group. If provided, a geo-replication group will be created for this database with itself as the only member. Use `azure.managedredis.GeoReplication` resource to manage group membership, linking and unlinking. All databases to be linked have to have the same group name. Refer to the [Managed Redis geo-replication documentation](https://learn.microsoft.com/azure/redis/how-to-active-geo-replication) for more information.
  /// [id] The ID of the Managed Redis Database Instance.
  /// [modules] A `module` block as defined below. Refer to [the modules documentation](https://learn.microsoft.com/azure/redis/redis-modules) to learn more.
  /// [persistenceAppendOnlyFileBackupFrequency] The frequency of Append Only File (AOF) backups. The only possible value is `1s`. Providing this value implies AOF persistence method is enabled. Conflicts with `persistenceRedisDatabaseBackupFrequency`, only one persistence method is allowed. Conflicts with `geoReplicationGroupName`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  /// [persistenceRedisDatabaseBackupFrequency] The frequency of Redis Database (RDB) backups. Possible values are `1h`, `6h` and `12h`. Providing this value implies RDB persistence method is enabled. Conflicts with `persistenceAppendOnlyFileBackupFrequency`, only one persistence method is allowed. Conflicts with `geoReplicationGroupName`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  /// [port] TCP port of the database endpoint.
  /// [primaryAccessKey] The Primary Access Key for the Managed Redis Database Instance. Only exported if `accessKeysAuthenticationEnabled` is set to `true`.
  /// [secondaryAccessKey] The Secondary Access Key for the Managed Redis Database Instance. Only exported if `accessKeysAuthenticationEnabled` is set to `true`.
  const ManagedRedisDefaultDatabase({
    this.accessKeysAuthenticationEnabled,
    this.clientProtocol,
    this.clusteringPolicy,
    this.evictionPolicy,
    this.geoReplicationGroupName,
    this.id,
    this.modules,
    this.persistenceAppendOnlyFileBackupFrequency,
    this.persistenceRedisDatabaseBackupFrequency,
    this.port,
    this.primaryAccessKey,
    this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthenticationEnabled': ?accessKeysAuthenticationEnabled,
      'clientProtocol': ?clientProtocol,
      'clusteringPolicy': ?clusteringPolicy,
      'evictionPolicy': ?evictionPolicy,
      'geoReplicationGroupName': ?geoReplicationGroupName,
      'id': ?id,
      'modules': ?pulumi.Input.mapOptionalInputValue<List<ManagedRedisDefaultDatabaseModule>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<ManagedRedisDefaultDatabaseModule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistenceAppendOnlyFileBackupFrequency': ?persistenceAppendOnlyFileBackupFrequency,
      'persistenceRedisDatabaseBackupFrequency': ?persistenceRedisDatabaseBackupFrequency,
      'port': ?port,
      'primaryAccessKey': ?primaryAccessKey,
      'secondaryAccessKey': ?secondaryAccessKey,
    };
  }

  factory ManagedRedisDefaultDatabase.fromMap(Map<String, dynamic> map) {
    return ManagedRedisDefaultDatabase(
      accessKeysAuthenticationEnabled: (() { final guardedValue = map['accessKeysAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientProtocol: (() { final guardedValue = map['clientProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusteringPolicy: (() { final guardedValue = map['clusteringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoReplicationGroupName: (() { final guardedValue = map['geoReplicationGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRedisDefaultDatabaseModule>(guardedValue, (value) => ManagedRedisDefaultDatabaseModule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      persistenceAppendOnlyFileBackupFrequency: (() { final guardedValue = map['persistenceAppendOnlyFileBackupFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceRedisDatabaseBackupFrequency: (() { final guardedValue = map['persistenceRedisDatabaseBackupFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
