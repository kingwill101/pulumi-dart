// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cluster_backup_restore.dart';
import 'database_cluster_maintenance_window.dart';

/// {@template pulumi_index_database_cluster_database_cluster_args_doc}
/// The set of arguments for DatabaseCluster.
/// {@endtemplate}
/// {@macro pulumi_index_database_cluster_database_cluster_args_doc}
class DatabaseClusterArgs {
  final pulumi.Input<DatabaseClusterBackupRestore>? backupRestore;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  final pulumi.Input<String> engine;
  /// A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
  final pulumi.Input<String>? evictionPolicy;
  /// Defines when the automatic maintenance should be performed for the database cluster.
  final pulumi.Input<List<DatabaseClusterMaintenanceWindow>>? maintenanceWindows;
  /// The name of the database cluster.
  final pulumi.Input<String>? name;
  /// Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  final pulumi.Input<int> nodeCount;
  /// The ID of the VPC where the database cluster will be located.
  final pulumi.Input<String>? privateNetworkUuid;
  /// The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  final pulumi.Input<String>? projectId;
  /// DigitalOcean region where the cluster will reside.
  final pulumi.Input<String> region;
  /// Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  final pulumi.Input<String> size;
  /// A comma separated string specifying the  SQL modes for a MySQL cluster.
  final pulumi.Input<String>? sqlMode;
  /// Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  final pulumi.Input<String>? storageSizeMib;
  /// A list of tag names to be applied to the database cluster.
  final pulumi.Input<List<String>>? tags;
  /// Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  /// When this value is changed, a call to the [Upgrade major Version for a Database](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_update_major_version) API operation is made with the new version.
  final pulumi.Input<String>? version;

  /// Creates a new [DatabaseClusterArgs].
  /// [backupRestore] Optional.
  /// [engine] Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  /// [evictionPolicy] A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
  /// [maintenanceWindows] Defines when the automatic maintenance should be performed for the database cluster.
  /// [name] The name of the database cluster.
  /// [nodeCount] Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  /// [privateNetworkUuid] The ID of the VPC where the database cluster will be located.
  /// [projectId] The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  /// [region] DigitalOcean region where the cluster will reside.
  /// [size] Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  /// [sqlMode] A comma separated string specifying the  SQL modes for a MySQL cluster.
  /// [storageSizeMib] Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  /// [tags] A list of tag names to be applied to the database cluster.
  /// [version] Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  DatabaseClusterArgs({
    pulumi.Output<DatabaseClusterBackupRestore>? backupRestore,
    required pulumi.Output<String> engine,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<List<DatabaseClusterMaintenanceWindow>>? maintenanceWindows,
    pulumi.Output<String>? name,
    required pulumi.Output<int> nodeCount,
    pulumi.Output<String>? privateNetworkUuid,
    pulumi.Output<String>? projectId,
    required pulumi.Output<String> region,
    required pulumi.Output<String> size,
    pulumi.Output<String>? sqlMode,
    pulumi.Output<String>? storageSizeMib,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? version,
  }) :
      backupRestore = pulumi.Input.asOptionalInput<DatabaseClusterBackupRestore>(backupRestore),
      engine = pulumi.Input.asInput<String>(engine),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      maintenanceWindows = pulumi.Input.asOptionalInput<List<DatabaseClusterMaintenanceWindow>>(maintenanceWindows),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      privateNetworkUuid = pulumi.Input.asOptionalInput<String>(privateNetworkUuid),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      size = pulumi.Input.asInput<String>(size),
      sqlMode = pulumi.Input.asOptionalInput<String>(sqlMode),
      storageSizeMib = pulumi.Input.asOptionalInput<String>(storageSizeMib),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRestore': ?pulumi.Input.mapOptionalInputValue<DatabaseClusterBackupRestore, Map<String, dynamic>>(backupRestore, (value) => value.toMap()),
      'engine': engine,
      'evictionPolicy': ?evictionPolicy,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<DatabaseClusterMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<DatabaseClusterMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeCount': nodeCount,
      'privateNetworkUuid': ?privateNetworkUuid,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'sqlMode': ?sqlMode,
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory DatabaseClusterArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterArgs(
      backupRestore: map['backupRestore'] == null ? null : pulumi.Output.create<DatabaseClusterBackupRestore>(DatabaseClusterBackupRestore.fromMap((map['backupRestore'] as Map).cast<String, dynamic>())),
      engine: pulumi.Output.create<String>(map['engine'] as String),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      maintenanceWindows: map['maintenanceWindows'] == null ? null : pulumi.Output.create<List<DatabaseClusterMaintenanceWindow>>(pulumi.Input.decodeList<DatabaseClusterMaintenanceWindow>(map['maintenanceWindows'], (value) => DatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: pulumi.Output.create<int>(map['nodeCount'] as int),
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : pulumi.Output.create<String>(map['privateNetworkUuid'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      size: pulumi.Output.create<String>(map['size'] as String),
      sqlMode: map['sqlMode'] == null ? null : pulumi.Output.create<String>(map['sqlMode'] as String),
      storageSizeMib: map['storageSizeMib'] == null ? null : pulumi.Output.create<String>(map['storageSizeMib'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

