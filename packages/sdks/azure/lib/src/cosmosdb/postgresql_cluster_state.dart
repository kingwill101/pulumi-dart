// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_cluster_maintenance_window.dart';
import 'postgresql_cluster_server.dart';

/// Input properties used for looking up and filtering PostgresqlCluster resources.
class PostgresqlClusterState {
  /// The password of the administrator login. This is required when `source_resource_id` is not set.
  final pulumi.Input<String>? administratorLoginPassword;
  /// The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`.
  final pulumi.Input<String>? citusVersion;
  /// Is public access enabled on coordinator? Defaults to `true`.
  final pulumi.Input<bool>? coordinatorPublicIpAccessEnabled;
  /// The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, and `MemoryOptimized`. Defaults to `GeneralPurpose`.
  ///
  /// > **Note:** When using `BurstableGeneralPurpose`, the minimum supported value for `coordinator_vcore_count` is `2`. Setting `coordinator_vcore_count = 1` with this edition will result in an error from the Azure API. See [Azure Cosmos DB for PostgreSQL compute documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute) for more details.
  final pulumi.Input<String>? coordinatorServerEdition;
  /// The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`.
  ///
  /// > **Note:** More information on [the types of compute resources available for CosmosDB can be found in the product documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute)
  final pulumi.Input<int>? coordinatorStorageQuotaInMb;
  /// The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`.
  final pulumi.Input<int>? coordinatorVcoreCount;
  /// The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String>? earliestRestoreTime;
  /// Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`.
  final pulumi.Input<bool>? haEnabled;
  /// The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `maintenance_window` block as defined below.
  final pulumi.Input<PostgresqlClusterMaintenanceWindow>? maintenanceWindow;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`.
  final pulumi.Input<int>? nodeCount;
  /// Is public access enabled on worker nodes. Defaults to `false`.
  final pulumi.Input<bool>? nodePublicIpAccessEnabled;
  /// The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`.
  final pulumi.Input<String>? nodeServerEdition;
  /// The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`.
  final pulumi.Input<int>? nodeStorageQuotaInMb;
  /// The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`.
  final pulumi.Input<int>? nodeVcores;
  /// The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created.
  final pulumi.Input<String>? pointInTimeInUtc;
  /// The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster.
  final pulumi.Input<String>? preferredPrimaryZone;
  /// The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `servers` block as defined below.
  final pulumi.Input<List<PostgresqlClusterServer>>? servers;
  /// Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster.
  final pulumi.Input<bool>? shardsOnCoordinatorEnabled;
  /// The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceLocation;
  /// The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`.
  final pulumi.Input<String>? sqlVersion;
  /// A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PostgresqlClusterState].
  /// [administratorLoginPassword] The password of the administrator login. This is required when `source_resource_id` is not set.
  /// [citusVersion] The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`.
  /// [coordinatorPublicIpAccessEnabled] Is public access enabled on coordinator? Defaults to `true`.
  /// [coordinatorServerEdition] The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, and `MemoryOptimized`. Defaults to `GeneralPurpose`.
  /// [coordinatorStorageQuotaInMb] The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`.
  /// [coordinatorVcoreCount] The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`.
  /// [earliestRestoreTime] The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster.
  /// [haEnabled] Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`.
  /// [location] The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  /// [maintenanceWindow] A `maintenance_window` block as defined below.
  /// [name] The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  /// [nodeCount] The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`.
  /// [nodePublicIpAccessEnabled] Is public access enabled on worker nodes. Defaults to `false`.
  /// [nodeServerEdition] The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`.
  /// [nodeStorageQuotaInMb] The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`.
  /// [nodeVcores] The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`.
  /// [pointInTimeInUtc] The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created.
  /// [preferredPrimaryZone] The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster.
  /// [resourceGroupName] The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  /// [servers] A `servers` block as defined below.
  /// [shardsOnCoordinatorEnabled] Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster.
  /// [sourceLocation] The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  /// [sourceResourceId] The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  /// [sqlVersion] The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`.
  /// [tags] A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster.
  PostgresqlClusterState({
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<String>? citusVersion,
    pulumi.Output<bool>? coordinatorPublicIpAccessEnabled,
    pulumi.Output<String>? coordinatorServerEdition,
    pulumi.Output<int>? coordinatorStorageQuotaInMb,
    pulumi.Output<int>? coordinatorVcoreCount,
    pulumi.Output<String>? earliestRestoreTime,
    pulumi.Output<bool>? haEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<PostgresqlClusterMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<bool>? nodePublicIpAccessEnabled,
    pulumi.Output<String>? nodeServerEdition,
    pulumi.Output<int>? nodeStorageQuotaInMb,
    pulumi.Output<int>? nodeVcores,
    pulumi.Output<String>? pointInTimeInUtc,
    pulumi.Output<String>? preferredPrimaryZone,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<PostgresqlClusterServer>>? servers,
    pulumi.Output<bool>? shardsOnCoordinatorEnabled,
    pulumi.Output<String>? sourceLocation,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? sqlVersion,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      citusVersion = pulumi.Input.asOptionalInput<String>(citusVersion),
      coordinatorPublicIpAccessEnabled = pulumi.Input.asOptionalInput<bool>(coordinatorPublicIpAccessEnabled),
      coordinatorServerEdition = pulumi.Input.asOptionalInput<String>(coordinatorServerEdition),
      coordinatorStorageQuotaInMb = pulumi.Input.asOptionalInput<int>(coordinatorStorageQuotaInMb),
      coordinatorVcoreCount = pulumi.Input.asOptionalInput<int>(coordinatorVcoreCount),
      earliestRestoreTime = pulumi.Input.asOptionalInput<String>(earliestRestoreTime),
      haEnabled = pulumi.Input.asOptionalInput<bool>(haEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<PostgresqlClusterMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodePublicIpAccessEnabled = pulumi.Input.asOptionalInput<bool>(nodePublicIpAccessEnabled),
      nodeServerEdition = pulumi.Input.asOptionalInput<String>(nodeServerEdition),
      nodeStorageQuotaInMb = pulumi.Input.asOptionalInput<int>(nodeStorageQuotaInMb),
      nodeVcores = pulumi.Input.asOptionalInput<int>(nodeVcores),
      pointInTimeInUtc = pulumi.Input.asOptionalInput<String>(pointInTimeInUtc),
      preferredPrimaryZone = pulumi.Input.asOptionalInput<String>(preferredPrimaryZone),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      servers = pulumi.Input.asOptionalInput<List<PostgresqlClusterServer>>(servers),
      shardsOnCoordinatorEnabled = pulumi.Input.asOptionalInput<bool>(shardsOnCoordinatorEnabled),
      sourceLocation = pulumi.Input.asOptionalInput<String>(sourceLocation),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      sqlVersion = pulumi.Input.asOptionalInput<String>(sqlVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLoginPassword': ?administratorLoginPassword,
      'citusVersion': ?citusVersion,
      'coordinatorPublicIpAccessEnabled': ?coordinatorPublicIpAccessEnabled,
      'coordinatorServerEdition': ?coordinatorServerEdition,
      'coordinatorStorageQuotaInMb': ?coordinatorStorageQuotaInMb,
      'coordinatorVcoreCount': ?coordinatorVcoreCount,
      'earliestRestoreTime': ?earliestRestoreTime,
      'haEnabled': ?haEnabled,
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<PostgresqlClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodePublicIpAccessEnabled': ?nodePublicIpAccessEnabled,
      'nodeServerEdition': ?nodeServerEdition,
      'nodeStorageQuotaInMb': ?nodeStorageQuotaInMb,
      'nodeVcores': ?nodeVcores,
      'pointInTimeInUtc': ?pointInTimeInUtc,
      'preferredPrimaryZone': ?preferredPrimaryZone,
      'resourceGroupName': ?resourceGroupName,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<PostgresqlClusterServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<PostgresqlClusterServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shardsOnCoordinatorEnabled': ?shardsOnCoordinatorEnabled,
      'sourceLocation': ?sourceLocation,
      'sourceResourceId': ?sourceResourceId,
      'sqlVersion': ?sqlVersion,
      'tags': ?tags,
    };
  }

  factory PostgresqlClusterState.fromMap(Map<String, dynamic> map) {
    return PostgresqlClusterState(
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      citusVersion: map['citusVersion'] == null ? null : pulumi.Output.create<String>(map['citusVersion'] as String),
      coordinatorPublicIpAccessEnabled: map['coordinatorPublicIpAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['coordinatorPublicIpAccessEnabled'] as bool),
      coordinatorServerEdition: map['coordinatorServerEdition'] == null ? null : pulumi.Output.create<String>(map['coordinatorServerEdition'] as String),
      coordinatorStorageQuotaInMb: map['coordinatorStorageQuotaInMb'] == null ? null : pulumi.Output.create<int>(map['coordinatorStorageQuotaInMb'] as int),
      coordinatorVcoreCount: map['coordinatorVcoreCount'] == null ? null : pulumi.Output.create<int>(map['coordinatorVcoreCount'] as int),
      earliestRestoreTime: map['earliestRestoreTime'] == null ? null : pulumi.Output.create<String>(map['earliestRestoreTime'] as String),
      haEnabled: map['haEnabled'] == null ? null : pulumi.Output.create<bool>(map['haEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<PostgresqlClusterMaintenanceWindow>(PostgresqlClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodePublicIpAccessEnabled: map['nodePublicIpAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['nodePublicIpAccessEnabled'] as bool),
      nodeServerEdition: map['nodeServerEdition'] == null ? null : pulumi.Output.create<String>(map['nodeServerEdition'] as String),
      nodeStorageQuotaInMb: map['nodeStorageQuotaInMb'] == null ? null : pulumi.Output.create<int>(map['nodeStorageQuotaInMb'] as int),
      nodeVcores: map['nodeVcores'] == null ? null : pulumi.Output.create<int>(map['nodeVcores'] as int),
      pointInTimeInUtc: map['pointInTimeInUtc'] == null ? null : pulumi.Output.create<String>(map['pointInTimeInUtc'] as String),
      preferredPrimaryZone: map['preferredPrimaryZone'] == null ? null : pulumi.Output.create<String>(map['preferredPrimaryZone'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servers: map['servers'] == null ? null : pulumi.Output.create<List<PostgresqlClusterServer>>(pulumi.Input.decodeList<PostgresqlClusterServer>(map['servers'], (value) => PostgresqlClusterServer.fromMap((value as Map).cast<String, dynamic>()))),
      shardsOnCoordinatorEnabled: map['shardsOnCoordinatorEnabled'] == null ? null : pulumi.Output.create<bool>(map['shardsOnCoordinatorEnabled'] as bool),
      sourceLocation: map['sourceLocation'] == null ? null : pulumi.Output.create<String>(map['sourceLocation'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      sqlVersion: map['sqlVersion'] == null ? null : pulumi.Output.create<String>(map['sqlVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

