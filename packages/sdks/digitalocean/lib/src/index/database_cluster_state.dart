// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cluster_backup_restore.dart';
import 'database_cluster_maintenance_window.dart';
import 'database_cluster_storage_autoscale.dart';

/// Input properties used for looking up and filtering DatabaseCluster resources.
class DatabaseClusterState {
  final pulumi.Input<DatabaseClusterBackupRestore>? backupRestore;
  /// The uniform resource name of the database cluster.
  final pulumi.Input<String>? clusterUrn;
  /// Name of the cluster's default database.
  final pulumi.Input<String>? database;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  final pulumi.Input<String>? engine;
  /// A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeysLru`, `allkeysRandom`, `volatileLru`, `volatileRandom`, or `volatileTtl`.
  final pulumi.Input<String>? evictionPolicy;
  /// Database cluster's hostname.
  final pulumi.Input<String>? host;
  /// Defines when the automatic maintenance should be performed for the database cluster.
  final pulumi.Input<List<DatabaseClusterMaintenanceWindow>>? maintenanceWindows;
  /// A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  final pulumi.Input<List<String>>? metricsEndpoints;
  /// The name of the database cluster.
  final pulumi.Input<String>? name;
  /// Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  final pulumi.Input<int>? nodeCount;
  /// Password for the cluster's default user.
  final pulumi.Input<String>? password;
  /// Network port that the database cluster is listening on.
  final pulumi.Input<int>? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateHost;
  /// The ID of the VPC where the database cluster will be located.
  final pulumi.Input<String>? privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateUri;
  /// The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  final pulumi.Input<String>? projectId;
  /// DigitalOcean region where the cluster will reside.
  final pulumi.Input<String>? region;
  /// Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  final pulumi.Input<String>? size;
  /// A comma separated string specifying the  SQL modes for a MySQL cluster.
  final pulumi.Input<String>? sqlMode;
  /// Storage autoscaling configuration for the database cluster.
  final pulumi.Input<DatabaseClusterStorageAutoscale>? storageAutoscale;
  /// Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  final pulumi.Input<String>? storageSizeMib;
  /// A list of tag names to be applied to the database cluster.
  final pulumi.Input<List<String>>? tags;
  /// Name of the OpenSearch dashboard db.
  final pulumi.Input<String>? uiDatabase;
  /// Hostname for the OpenSearch dashboard.
  final pulumi.Input<String>? uiHost;
  /// Password for the OpenSearch dashboard's default user.
  final pulumi.Input<String>? uiPassword;
  /// Network port that the OpenSearch dashboard is listening on.
  final pulumi.Input<int>? uiPort;
  /// The full URI for connecting to the OpenSearch dashboard.
  final pulumi.Input<String>? uiUri;
  /// Username for OpenSearch dashboard's default user.
  final pulumi.Input<String>? uiUser;
  /// The full URI for connecting to the database cluster.
  final pulumi.Input<String>? uri;
  /// Username for the cluster's default user.
  final pulumi.Input<String>? user;
  /// Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  /// When this value is changed, a call to the [Upgrade major Version for a Database](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_update_major_version) API operation is made with the new version.
  final pulumi.Input<String>? version;

  /// Creates a new [DatabaseClusterState].
  /// [backupRestore] Optional.
  /// [clusterUrn] The uniform resource name of the database cluster.
  /// [database] Name of the cluster's default database.
  /// [engine] Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  /// [evictionPolicy] A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeysLru`, `allkeysRandom`, `volatileLru`, `volatileRandom`, or `volatileTtl`.
  /// [host] Database cluster's hostname.
  /// [maintenanceWindows] Defines when the automatic maintenance should be performed for the database cluster.
  /// [metricsEndpoints] A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  /// [name] The name of the database cluster.
  /// [nodeCount] Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  /// [password] Password for the cluster's default user.
  /// [port] Network port that the database cluster is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] The ID of the VPC where the database cluster will be located.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [projectId] The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  /// [region] DigitalOcean region where the cluster will reside.
  /// [size] Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  /// [sqlMode] A comma separated string specifying the  SQL modes for a MySQL cluster.
  /// [storageAutoscale] Storage autoscaling configuration for the database cluster.
  /// [storageSizeMib] Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  /// [tags] A list of tag names to be applied to the database cluster.
  /// [uiDatabase] Name of the OpenSearch dashboard db.
  /// [uiHost] Hostname for the OpenSearch dashboard.
  /// [uiPassword] Password for the OpenSearch dashboard's default user.
  /// [uiPort] Network port that the OpenSearch dashboard is listening on.
  /// [uiUri] The full URI for connecting to the OpenSearch dashboard.
  /// [uiUser] Username for OpenSearch dashboard's default user.
  /// [uri] The full URI for connecting to the database cluster.
  /// [user] Username for the cluster's default user.
  /// [version] Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  const DatabaseClusterState({
    this.backupRestore,
    this.clusterUrn,
    this.database,
    this.engine,
    this.evictionPolicy,
    this.host,
    this.maintenanceWindows,
    this.metricsEndpoints,
    this.name,
    this.nodeCount,
    this.password,
    this.port,
    this.privateHost,
    this.privateNetworkUuid,
    this.privateUri,
    this.projectId,
    this.region,
    this.size,
    this.sqlMode,
    this.storageAutoscale,
    this.storageSizeMib,
    this.tags,
    this.uiDatabase,
    this.uiHost,
    this.uiPassword,
    this.uiPort,
    this.uiUri,
    this.uiUser,
    this.uri,
    this.user,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRestore': ?pulumi.Input.mapOptionalInputValue<DatabaseClusterBackupRestore, Map<String, dynamic>>(backupRestore, (value) => value.toMap()),
      'clusterUrn': ?clusterUrn,
      'database': ?database,
      'engine': ?engine,
      'evictionPolicy': ?evictionPolicy,
      'host': ?host,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<DatabaseClusterMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<DatabaseClusterMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricsEndpoints': ?metricsEndpoints,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'password': ?password,
      'port': ?port,
      'privateHost': ?privateHost,
      'privateNetworkUuid': ?privateNetworkUuid,
      'privateUri': ?privateUri,
      'projectId': ?projectId,
      'region': ?region,
      'size': ?size,
      'sqlMode': ?sqlMode,
      'storageAutoscale': ?pulumi.Input.mapOptionalInputValue<DatabaseClusterStorageAutoscale, Map<String, dynamic>>(storageAutoscale, (value) => value.toMap()),
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'uiDatabase': ?uiDatabase,
      'uiHost': ?uiHost,
      'uiPassword': ?uiPassword,
      'uiPort': ?uiPort,
      'uiUri': ?uiUri,
      'uiUser': ?uiUser,
      'uri': ?uri,
      'user': ?user,
      'version': ?version,
    };
  }

  factory DatabaseClusterState.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterState(
      backupRestore: (() { final guardedValue = map['backupRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseClusterBackupRestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterUrn: (() { final guardedValue = map['clusterUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseClusterMaintenanceWindow>(guardedValue, (value) => DatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricsEndpoints: (() { final guardedValue = map['metricsEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateHost: (() { final guardedValue = map['privateHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateNetworkUuid: (() { final guardedValue = map['privateNetworkUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateUri: (() { final guardedValue = map['privateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlMode: (() { final guardedValue = map['sqlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAutoscale: (() { final guardedValue = map['storageAutoscale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseClusterStorageAutoscale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSizeMib: (() { final guardedValue = map['storageSizeMib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uiDatabase: (() { final guardedValue = map['uiDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiHost: (() { final guardedValue = map['uiHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiPassword: (() { final guardedValue = map['uiPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiPort: (() { final guardedValue = map['uiPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uiUri: (() { final guardedValue = map['uiUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiUser: (() { final guardedValue = map['uiUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
