// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cluster_backup_restore.dart';
import 'database_cluster_maintenance_window.dart';

/// Input properties used for looking up and filtering DatabaseCluster resources.
class DatabaseClusterState {
  final pulumi.Input<DatabaseClusterBackupRestore>? backupRestore;
  /// The uniform resource name of the database cluster.
  final pulumi.Input<String>? clusterUrn;
  /// Name of the cluster's default database.
  final pulumi.Input<String>? database;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  final pulumi.Input<String>? engine;
  /// A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
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
  /// [evictionPolicy] A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
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
  DatabaseClusterState({
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
      backupRestore: map['backupRestore'] == null ? null : (DatabaseClusterBackupRestore.fromMap((map['backupRestore']! as Map).cast<String, dynamic>())).input(),
      clusterUrn: map['clusterUrn'] == null ? null : (map['clusterUrn']! as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      evictionPolicy: map['evictionPolicy'] == null ? null : (map['evictionPolicy']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      maintenanceWindows: map['maintenanceWindows'] == null ? null : (pulumi.Input.decodeList<DatabaseClusterMaintenanceWindow>(map['maintenanceWindows']!, (value) => DatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricsEndpoints: map['metricsEndpoints'] == null ? null : ((map['metricsEndpoints']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      privateHost: map['privateHost'] == null ? null : (map['privateHost']! as String).input(),
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : (map['privateNetworkUuid']! as String).input(),
      privateUri: map['privateUri'] == null ? null : (map['privateUri']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      sqlMode: map['sqlMode'] == null ? null : (map['sqlMode']! as String).input(),
      storageSizeMib: map['storageSizeMib'] == null ? null : (map['storageSizeMib']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      uiDatabase: map['uiDatabase'] == null ? null : (map['uiDatabase']! as String).input(),
      uiHost: map['uiHost'] == null ? null : (map['uiHost']! as String).input(),
      uiPassword: map['uiPassword'] == null ? null : (map['uiPassword']! as String).input(),
      uiPort: map['uiPort'] == null ? null : (map['uiPort']! as int).input(),
      uiUri: map['uiUri'] == null ? null : (map['uiUri']! as String).input(),
      uiUser: map['uiUser'] == null ? null : (map['uiUser']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

