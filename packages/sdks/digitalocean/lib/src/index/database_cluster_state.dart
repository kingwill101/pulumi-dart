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
    pulumi.Output<DatabaseClusterBackupRestore>? backupRestore,
    pulumi.Output<String>? clusterUrn,
    pulumi.Output<String>? database,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<String>? host,
    pulumi.Output<List<DatabaseClusterMaintenanceWindow>>? maintenanceWindows,
    pulumi.Output<List<String>>? metricsEndpoints,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<String>? privateHost,
    pulumi.Output<String>? privateNetworkUuid,
    pulumi.Output<String>? privateUri,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? size,
    pulumi.Output<String>? sqlMode,
    pulumi.Output<String>? storageSizeMib,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? uiDatabase,
    pulumi.Output<String>? uiHost,
    pulumi.Output<String>? uiPassword,
    pulumi.Output<int>? uiPort,
    pulumi.Output<String>? uiUri,
    pulumi.Output<String>? uiUser,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? user,
    pulumi.Output<String>? version,
  }) :
      backupRestore = pulumi.Input.asOptionalInput<DatabaseClusterBackupRestore>(backupRestore),
      clusterUrn = pulumi.Input.asOptionalInput<String>(clusterUrn),
      database = pulumi.Input.asOptionalInput<String>(database),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      host = pulumi.Input.asOptionalInput<String>(host),
      maintenanceWindows = pulumi.Input.asOptionalInput<List<DatabaseClusterMaintenanceWindow>>(maintenanceWindows),
      metricsEndpoints = pulumi.Input.asOptionalInput<List<String>>(metricsEndpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      privateHost = pulumi.Input.asOptionalInput<String>(privateHost),
      privateNetworkUuid = pulumi.Input.asOptionalInput<String>(privateNetworkUuid),
      privateUri = pulumi.Input.asOptionalInput<String>(privateUri),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<String>(size),
      sqlMode = pulumi.Input.asOptionalInput<String>(sqlMode),
      storageSizeMib = pulumi.Input.asOptionalInput<String>(storageSizeMib),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      uiDatabase = pulumi.Input.asOptionalInput<String>(uiDatabase),
      uiHost = pulumi.Input.asOptionalInput<String>(uiHost),
      uiPassword = pulumi.Input.asOptionalInput<String>(uiPassword),
      uiPort = pulumi.Input.asOptionalInput<int>(uiPort),
      uiUri = pulumi.Input.asOptionalInput<String>(uiUri),
      uiUser = pulumi.Input.asOptionalInput<String>(uiUser),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      user = pulumi.Input.asOptionalInput<String>(user),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      backupRestore: map['backupRestore'] == null ? null : pulumi.Output.create<DatabaseClusterBackupRestore>(DatabaseClusterBackupRestore.fromMap((map['backupRestore'] as Map).cast<String, dynamic>())),
      clusterUrn: map['clusterUrn'] == null ? null : pulumi.Output.create<String>(map['clusterUrn'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      maintenanceWindows: map['maintenanceWindows'] == null ? null : pulumi.Output.create<List<DatabaseClusterMaintenanceWindow>>(pulumi.Input.decodeList<DatabaseClusterMaintenanceWindow>(map['maintenanceWindows'], (value) => DatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
      metricsEndpoints: map['metricsEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['metricsEndpoints'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privateHost: map['privateHost'] == null ? null : pulumi.Output.create<String>(map['privateHost'] as String),
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : pulumi.Output.create<String>(map['privateNetworkUuid'] as String),
      privateUri: map['privateUri'] == null ? null : pulumi.Output.create<String>(map['privateUri'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sqlMode: map['sqlMode'] == null ? null : pulumi.Output.create<String>(map['sqlMode'] as String),
      storageSizeMib: map['storageSizeMib'] == null ? null : pulumi.Output.create<String>(map['storageSizeMib'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      uiDatabase: map['uiDatabase'] == null ? null : pulumi.Output.create<String>(map['uiDatabase'] as String),
      uiHost: map['uiHost'] == null ? null : pulumi.Output.create<String>(map['uiHost'] as String),
      uiPassword: map['uiPassword'] == null ? null : pulumi.Output.create<String>(map['uiPassword'] as String),
      uiPort: map['uiPort'] == null ? null : pulumi.Output.create<int>(map['uiPort'] as int),
      uiUri: map['uiUri'] == null ? null : pulumi.Output.create<String>(map['uiUri'] as String),
      uiUser: map['uiUser'] == null ? null : pulumi.Output.create<String>(map['uiUser'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

