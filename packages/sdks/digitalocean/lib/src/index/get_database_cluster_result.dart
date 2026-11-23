// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_cluster_maintenance_window.dart';
import 'get_database_cluster_storage_autoscale.dart';

/// Result data returned by getDatabaseCluster.
class GetDatabaseClusterResult {
  /// Name of the cluster's default database.
  final String? database;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL).
  final String? engine;
  /// Database cluster's hostname.
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Defines when the automatic maintenance should be performed for the database cluster.
  final List<GetDatabaseClusterMaintenanceWindow>? maintenanceWindows;
  /// A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  final List<String>? metricsEndpoints;
  final String? name;
  /// Number of nodes that will be included in the cluster.
  final int? nodeCount;
  /// Password for the cluster's default user.
  final String? password;
  /// Network port that the database cluster is listening on.
  final int? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String? privateHost;
  /// The ID of the VPC where the database cluster is located.
  final String? privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String? privateUri;
  /// The ID of the project that the database cluster is assigned to.
  final String? projectId;
  /// DigitalOcean region where the cluster will reside.
  final String? region;
  /// Database droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`).
  final String? size;
  /// Storage autoscaling configuration for the database cluster.
  final List<GetDatabaseClusterStorageAutoscale>? storageAutoscales;
  /// The disk size, in MiB, allocated to the cluster.
  final String? storageSizeMib;
  final List<String>? tags;
  /// Name of the OpenSearch dashboard db.
  final String? uiDatabase;
  /// Hostname for the OpenSearch dashboard.
  final String? uiHost;
  /// Password for the OpenSearch dashboard's default user.
  final String? uiPassword;
  /// Network port that the OpenSearch dashboard is listening on.
  final int? uiPort;
  /// The full URI for connecting to the OpenSearch dashboard.
  final String? uiUri;
  /// Username for OpenSearch dashboard's default user.
  final String? uiUser;
  /// The full URI for connecting to the database cluster.
  final String? uri;
  /// The uniform resource name of the database cluster.
  final String? urn;
  /// Username for the cluster's default user.
  final String? user;
  /// Engine version used by the cluster (ex. `11` for PostgreSQL 11).
  final String? version;

  /// Creates a new [GetDatabaseClusterResult].
  /// [database] Name of the cluster's default database.
  /// [engine] Database engine used by the cluster (ex. `pg` for PostgreSQL).
  /// [host] Database cluster's hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maintenanceWindows] Defines when the automatic maintenance should be performed for the database cluster.
  /// [metricsEndpoints] A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  /// [name] Optional.
  /// [nodeCount] Number of nodes that will be included in the cluster.
  /// [password] Password for the cluster's default user.
  /// [port] Network port that the database cluster is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] The ID of the VPC where the database cluster is located.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [projectId] The ID of the project that the database cluster is assigned to.
  /// [region] DigitalOcean region where the cluster will reside.
  /// [size] Database droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`).
  /// [storageAutoscales] Storage autoscaling configuration for the database cluster.
  /// [storageSizeMib] The disk size, in MiB, allocated to the cluster.
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
  const GetDatabaseClusterResult({
    this.database,
    this.engine,
    this.host,
    this.id,
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
    this.storageAutoscales,
    this.storageSizeMib,
    this.tags,
    this.uiDatabase,
    this.uiHost,
    this.uiPassword,
    this.uiPort,
    this.uiUri,
    this.uiUser,
    this.uri,
    this.urn,
    this.user,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'engine': ?engine,
      'host': ?host,
      'id': ?id,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseClusterMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      'storageAutoscales': ?(() { final guardedValue = storageAutoscales; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseClusterStorageAutoscale, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'uiDatabase': ?uiDatabase,
      'uiHost': ?uiHost,
      'uiPassword': ?uiPassword,
      'uiPort': ?uiPort,
      'uiUri': ?uiUri,
      'uiUser': ?uiUser,
      'uri': ?uri,
      'urn': ?urn,
      'user': ?user,
      'version': ?version,
    };
  }

  factory GetDatabaseClusterResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseClusterResult(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseClusterMaintenanceWindow>(guardedValue, (value) => GetDatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      metricsEndpoints: (() { final guardedValue = map['metricsEndpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateHost: (() { final guardedValue = map['privateHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateNetworkUuid: (() { final guardedValue = map['privateNetworkUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateUri: (() { final guardedValue = map['privateUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAutoscales: (() { final guardedValue = map['storageAutoscales']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseClusterStorageAutoscale>(guardedValue, (value) => GetDatabaseClusterStorageAutoscale.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageSizeMib: (() { final guardedValue = map['storageSizeMib']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      uiDatabase: (() { final guardedValue = map['uiDatabase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiHost: (() { final guardedValue = map['uiHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiPassword: (() { final guardedValue = map['uiPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiPort: (() { final guardedValue = map['uiPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      uiUri: (() { final guardedValue = map['uiUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiUser: (() { final guardedValue = map['uiUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
