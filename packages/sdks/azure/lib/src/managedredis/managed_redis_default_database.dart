// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_redis_default_database_module.dart';

class ManagedRedisDefaultDatabase {
  /// Whether access key authentication is enabled for the database. Defaults to `false`.
  final bool? accessKeysAuthenticationEnabled;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`.
  final String? clientProtocol;
  /// Clustering policy specified at create time. Possible values are `EnterpriseCluster`, `OSSCluster` and `NoCluster`. Defaults to `OSSCluster`.
  ///
  /// !> **Note:** Changing `clustering_policy` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  final String? clusteringPolicy;
  /// Specifies the Redis eviction policy. Possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Defaults to `VolatileLRU`.
  final String? evictionPolicy;
  /// The name of the geo-replication group. If provided, a geo-replication group will be created for this database with itself as the only member. Use `azurerm_managed_redis_database_geo_replication` resource to manage group membership, linking and unlinking. All databases to be linked have to have the same group name. Refer to the [Managed Redis geo-replication documentation](https://learn.microsoft.com/azure/redis/how-to-active-geo-replication) for more information.
  ///
  /// !> **Note:** Changing `geo_replication_group_name` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  final String? geoReplicationGroupName;
  /// The ID of the Managed Redis Database Instance.
  final String? id;
  /// A `module` block as defined below. Refer to [the modules documentation](https://learn.microsoft.com/azure/redis/redis-modules) to learn more.
  final List<ManagedRedisDefaultDatabaseModule>? modules;
  /// The frequency of Append Only File (AOF) backups. The only possible value is `1s`. Providing this value implies AOF persistence method is enabled. Conflicts with `persistence_redis_database_backup_frequency`, only one persistence method is allowed. Conflicts with `geo_replication_group_name`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  final String? persistenceAppendOnlyFileBackupFrequency;
  /// The frequency of Redis Database (RDB) backups. Possible values are `1h`, `6h` and `12h`. Providing this value implies RDB persistence method is enabled. Conflicts with `persistence_append_only_file_backup_frequency`, only one persistence method is allowed. Conflicts with `geo_replication_group_name`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  final String? persistenceRedisDatabaseBackupFrequency;
  /// TCP port of the database endpoint.
  final int? port;
  /// The Primary Access Key for the Managed Redis Database Instance. Only exported if `access_keys_authentication_enabled` is set to `true`.
  final String? primaryAccessKey;
  /// The Secondary Access Key for the Managed Redis Database Instance. Only exported if `access_keys_authentication_enabled` is set to `true`.
  final String? secondaryAccessKey;

  /// Creates a new [ManagedRedisDefaultDatabase].
  /// [accessKeysAuthenticationEnabled] Whether access key authentication is enabled for the database. Defaults to `false`.
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`.
  /// [clusteringPolicy] Clustering policy specified at create time. Possible values are `EnterpriseCluster`, `OSSCluster` and `NoCluster`. Defaults to `OSSCluster`.
  /// [evictionPolicy] Specifies the Redis eviction policy. Possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Defaults to `VolatileLRU`.
  /// [geoReplicationGroupName] The name of the geo-replication group. If provided, a geo-replication group will be created for this database with itself as the only member. Use `azurerm_managed_redis_database_geo_replication` resource to manage group membership, linking and unlinking. All databases to be linked have to have the same group name. Refer to the [Managed Redis geo-replication documentation](https://learn.microsoft.com/azure/redis/how-to-active-geo-replication) for more information.
  /// [id] The ID of the Managed Redis Database Instance.
  /// [modules] A `module` block as defined below. Refer to [the modules documentation](https://learn.microsoft.com/azure/redis/redis-modules) to learn more.
  /// [persistenceAppendOnlyFileBackupFrequency] The frequency of Append Only File (AOF) backups. The only possible value is `1s`. Providing this value implies AOF persistence method is enabled. Conflicts with `persistence_redis_database_backup_frequency`, only one persistence method is allowed. Conflicts with `geo_replication_group_name`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  /// [persistenceRedisDatabaseBackupFrequency] The frequency of Redis Database (RDB) backups. Possible values are `1h`, `6h` and `12h`. Providing this value implies RDB persistence method is enabled. Conflicts with `persistence_append_only_file_backup_frequency`, only one persistence method is allowed. Conflicts with `geo_replication_group_name`, persistence can only be enabled on non-geo-replicated databases. Refer to [the persistence documentation](https://learn.microsoft.com/azure/redis/how-to-persistence) to learn more.
  /// [port] TCP port of the database endpoint.
  /// [primaryAccessKey] The Primary Access Key for the Managed Redis Database Instance. Only exported if `access_keys_authentication_enabled` is set to `true`.
  /// [secondaryAccessKey] The Secondary Access Key for the Managed Redis Database Instance. Only exported if `access_keys_authentication_enabled` is set to `true`.
  ManagedRedisDefaultDatabase({
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
      'modules': ?modules == null ? null : pulumi.Input.encodeList<ManagedRedisDefaultDatabaseModule, Map<String, dynamic>>(modules!, (value) => value.toMap()),
      'persistenceAppendOnlyFileBackupFrequency': ?persistenceAppendOnlyFileBackupFrequency,
      'persistenceRedisDatabaseBackupFrequency': ?persistenceRedisDatabaseBackupFrequency,
      'port': ?port,
      'primaryAccessKey': ?primaryAccessKey,
      'secondaryAccessKey': ?secondaryAccessKey,
    };
  }

  factory ManagedRedisDefaultDatabase.fromMap(Map<String, dynamic> map) {
    return ManagedRedisDefaultDatabase(
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] == null ? null : map['accessKeysAuthenticationEnabled'] as bool,
      clientProtocol: map['clientProtocol'] == null ? null : map['clientProtocol'] as String,
      clusteringPolicy: map['clusteringPolicy'] == null ? null : map['clusteringPolicy'] as String,
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      geoReplicationGroupName: map['geoReplicationGroupName'] == null ? null : map['geoReplicationGroupName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      modules: map['modules'] == null ? null : pulumi.Input.decodeList<ManagedRedisDefaultDatabaseModule>(map['modules'], (value) => ManagedRedisDefaultDatabaseModule.fromMap((value as Map).cast<String, dynamic>())),
      persistenceAppendOnlyFileBackupFrequency: map['persistenceAppendOnlyFileBackupFrequency'] == null ? null : map['persistenceAppendOnlyFileBackupFrequency'] as String,
      persistenceRedisDatabaseBackupFrequency: map['persistenceRedisDatabaseBackupFrequency'] == null ? null : map['persistenceRedisDatabaseBackupFrequency'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      primaryAccessKey: map['primaryAccessKey'] == null ? null : map['primaryAccessKey'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : map['secondaryAccessKey'] as String,
    );
  }
}

