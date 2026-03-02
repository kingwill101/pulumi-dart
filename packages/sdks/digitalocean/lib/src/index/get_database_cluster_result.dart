// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_cluster_maintenance_window.dart';

/// Result data returned by getDatabaseCluster.
class GetDatabaseClusterResult {
  /// Name of the cluster's default database.
  final String database;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL).
  final String engine;
  /// Database cluster's hostname.
  final String host;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Defines when the automatic maintenance should be performed for the database cluster.
  final List<GetDatabaseClusterMaintenanceWindow> maintenanceWindows;
  /// A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  final List<String> metricsEndpoints;
  final String name;
  /// Number of nodes that will be included in the cluster.
  final int nodeCount;
  /// Password for the cluster's default user.
  final String password;
  /// Network port that the database cluster is listening on.
  final int port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String privateHost;
  /// The ID of the VPC where the database cluster is located.
  final String privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String privateUri;
  /// The ID of the project that the database cluster is assigned to.
  final String projectId;
  /// DigitalOcean region where the cluster will reside.
  final String region;
  /// Database droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`).
  final String size;
  final String storageSizeMib;
  final List<String>? tags;
  /// Name of the OpenSearch dashboard db.
  final String uiDatabase;
  /// Hostname for the OpenSearch dashboard.
  final String uiHost;
  /// Password for the OpenSearch dashboard's default user.
  final String uiPassword;
  /// Network port that the OpenSearch dashboard is listening on.
  final int uiPort;
  /// The full URI for connecting to the OpenSearch dashboard.
  final String uiUri;
  /// Username for OpenSearch dashboard's default user.
  final String uiUser;
  /// The full URI for connecting to the database cluster.
  final String uri;
  /// The uniform resource name of the database cluster.
  final String urn;
  /// Username for the cluster's default user.
  final String user;
  /// Engine version used by the cluster (ex. `11` for PostgreSQL 11).
  final String version;

  /// Creates a new [GetDatabaseClusterResult].
  /// [database] Name of the cluster's default database.
  /// [engine] Database engine used by the cluster (ex. `pg` for PostgreSQL).
  /// [host] Database cluster's hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maintenanceWindows] Defines when the automatic maintenance should be performed for the database cluster.
  /// [metricsEndpoints] A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  /// [name] Required.
  /// [nodeCount] Number of nodes that will be included in the cluster.
  /// [password] Password for the cluster's default user.
  /// [port] Network port that the database cluster is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] The ID of the VPC where the database cluster is located.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [projectId] The ID of the project that the database cluster is assigned to.
  /// [region] DigitalOcean region where the cluster will reside.
  /// [size] Database droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`).
  /// [storageSizeMib] Required.
  /// [tags] Optional.
  /// [uiDatabase] Name of the OpenSearch dashboard db.
  /// [uiHost] Hostname for the OpenSearch dashboard.
  /// [uiPassword] Password for the OpenSearch dashboard's default user.
  /// [uiPort] Network port that the OpenSearch dashboard is listening on.
  /// [uiUri] The full URI for connecting to the OpenSearch dashboard.
  /// [uiUser] Username for OpenSearch dashboard's default user.
  /// [uri] The full URI for connecting to the database cluster.
  /// [urn] The uniform resource name of the database cluster.
  /// [user] Username for the cluster's default user.
  /// [version] Engine version used by the cluster (ex. `11` for PostgreSQL 11).
  GetDatabaseClusterResult({
    required this.database,
    required this.engine,
    required this.host,
    required this.id,
    required this.maintenanceWindows,
    required this.metricsEndpoints,
    required this.name,
    required this.nodeCount,
    required this.password,
    required this.port,
    required this.privateHost,
    required this.privateNetworkUuid,
    required this.privateUri,
    required this.projectId,
    required this.region,
    required this.size,
    required this.storageSizeMib,
    this.tags,
    required this.uiDatabase,
    required this.uiHost,
    required this.uiPassword,
    required this.uiPort,
    required this.uiUri,
    required this.uiUser,
    required this.uri,
    required this.urn,
    required this.user,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'engine': engine,
      'host': host,
      'id': id,
      'maintenanceWindows': pulumi.Input.encodeList<GetDatabaseClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'metricsEndpoints': metricsEndpoints,
      'name': name,
      'nodeCount': nodeCount,
      'password': password,
      'port': port,
      'privateHost': privateHost,
      'privateNetworkUuid': privateNetworkUuid,
      'privateUri': privateUri,
      'projectId': projectId,
      'region': region,
      'size': size,
      'storageSizeMib': storageSizeMib,
      'tags': ?tags,
      'uiDatabase': uiDatabase,
      'uiHost': uiHost,
      'uiPassword': uiPassword,
      'uiPort': uiPort,
      'uiUri': uiUri,
      'uiUser': uiUser,
      'uri': uri,
      'urn': urn,
      'user': user,
      'version': version,
    };
  }

  factory GetDatabaseClusterResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseClusterResult(
      database: map['database'] as String,
      engine: map['engine'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetDatabaseClusterMaintenanceWindow>(map['maintenanceWindows'], (value) => GetDatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      metricsEndpoints: (map['metricsEndpoints'] as List).cast<String>(),
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      password: map['password'] as String,
      port: map['port'] as int,
      privateHost: map['privateHost'] as String,
      privateNetworkUuid: map['privateNetworkUuid'] as String,
      privateUri: map['privateUri'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as String,
      storageSizeMib: map['storageSizeMib'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      uiDatabase: map['uiDatabase'] as String,
      uiHost: map['uiHost'] as String,
      uiPassword: map['uiPassword'] as String,
      uiPort: map['uiPort'] as int,
      uiUri: map['uiUri'] as String,
      uiUser: map['uiUser'] as String,
      uri: map['uri'] as String,
      urn: map['urn'] as String,
      user: map['user'] as String,
      version: map['version'] as String,
    );
  }
}

