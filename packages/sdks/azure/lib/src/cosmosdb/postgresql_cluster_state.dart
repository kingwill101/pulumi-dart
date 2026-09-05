// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_cluster_maintenance_window.dart';
import 'postgresql_cluster_server.dart';

/// Input properties used for looking up and filtering PostgresqlCluster resources.
class PostgresqlClusterState {
  /// The password of the administrator login. This is required when `sourceResourceId` is not set.
  final pulumi.Input<String?>? administratorLoginPassword;
  /// The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`.
  final pulumi.Input<String?>? citusVersion;
  /// Is public access enabled on coordinator? Defaults to `true`.
  final pulumi.Input<bool?>? coordinatorPublicIpAccessEnabled;
  /// The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, and `MemoryOptimized`. Defaults to `GeneralPurpose`.
  ///
  /// &gt; **Note:** When using `BurstableGeneralPurpose`, the minimum supported value for `coordinatorVcoreCount` is `2`. Setting `coordinatorVcoreCount = 1` with this edition will result in an error from the Azure API. See [Azure Cosmos DB for PostgreSQL compute documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute) for more details.
  final pulumi.Input<String?>? coordinatorServerEdition;
  /// The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`.
  ///
  /// &gt; **Note:** More information on [the types of compute resources available for CosmosDB can be found in the product documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute)
  final pulumi.Input<int?>? coordinatorStorageQuotaInMb;
  /// The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`.
  final pulumi.Input<int?>? coordinatorVcoreCount;
  /// The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<String?>? earliestRestoreTime;
  /// Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`.
  final pulumi.Input<bool?>? haEnabled;
  /// The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// A `maintenanceWindow` block as defined below.
  final pulumi.Input<PostgresqlClusterMaintenanceWindow?>? maintenanceWindow;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`.
  final pulumi.Input<int?>? nodeCount;
  /// Is public access enabled on worker nodes. Defaults to `false`.
  final pulumi.Input<bool?>? nodePublicIpAccessEnabled;
  /// The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`.
  final pulumi.Input<String?>? nodeServerEdition;
  /// The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`.
  final pulumi.Input<int?>? nodeStorageQuotaInMb;
  /// The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`.
  final pulumi.Input<int?>? nodeVcores;
  /// The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? pointInTimeInUtc;
  /// The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster.
  final pulumi.Input<String?>? preferredPrimaryZone;
  /// The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `servers` block as defined below.
  final pulumi.Input<List<PostgresqlClusterServer>?>? servers;
  /// Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster.
  final pulumi.Input<bool?>? shardsOnCoordinatorEnabled;
  /// The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceLocation;
  /// The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceResourceId;
  /// The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`.
  final pulumi.Input<String?>? sqlVersion;
  /// A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PostgresqlClusterState].
  /// [administratorLoginPassword] The password of the administrator login. This is required when `sourceResourceId` is not set.
  /// [citusVersion] The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`.
  /// [coordinatorPublicIpAccessEnabled] Is public access enabled on coordinator? Defaults to `true`.
  /// [coordinatorServerEdition] The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, and `MemoryOptimized`. Defaults to `GeneralPurpose`.
  /// [coordinatorStorageQuotaInMb] The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`.
  /// [coordinatorVcoreCount] The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`.
  /// [earliestRestoreTime] The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster.
  /// [haEnabled] Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`.
  /// [location] The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  /// [maintenanceWindow] A `maintenanceWindow` block as defined below.
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
  const PostgresqlClusterState({
    this.administratorLoginPassword,
    this.citusVersion,
    this.coordinatorPublicIpAccessEnabled,
    this.coordinatorServerEdition,
    this.coordinatorStorageQuotaInMb,
    this.coordinatorVcoreCount,
    this.earliestRestoreTime,
    this.haEnabled,
    this.location,
    this.maintenanceWindow,
    this.name,
    this.nodeCount,
    this.nodePublicIpAccessEnabled,
    this.nodeServerEdition,
    this.nodeStorageQuotaInMb,
    this.nodeVcores,
    this.pointInTimeInUtc,
    this.preferredPrimaryZone,
    this.resourceGroupName,
    this.servers,
    this.shardsOnCoordinatorEnabled,
    this.sourceLocation,
    this.sourceResourceId,
    this.sqlVersion,
    this.tags,
  });

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
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      citusVersion: (() { final guardedValue = map['citusVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coordinatorPublicIpAccessEnabled: (() { final guardedValue = map['coordinatorPublicIpAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coordinatorServerEdition: (() { final guardedValue = map['coordinatorServerEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coordinatorStorageQuotaInMb: (() { final guardedValue = map['coordinatorStorageQuotaInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      coordinatorVcoreCount: (() { final guardedValue = map['coordinatorVcoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      earliestRestoreTime: (() { final guardedValue = map['earliestRestoreTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haEnabled: (() { final guardedValue = map['haEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PostgresqlClusterMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodePublicIpAccessEnabled: (() { final guardedValue = map['nodePublicIpAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeServerEdition: (() { final guardedValue = map['nodeServerEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeStorageQuotaInMb: (() { final guardedValue = map['nodeStorageQuotaInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeVcores: (() { final guardedValue = map['nodeVcores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pointInTimeInUtc: (() { final guardedValue = map['pointInTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredPrimaryZone: (() { final guardedValue = map['preferredPrimaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PostgresqlClusterServer>(guardedValue, (value) => PostgresqlClusterServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shardsOnCoordinatorEnabled: (() { final guardedValue = map['shardsOnCoordinatorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceLocation: (() { final guardedValue = map['sourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlVersion: (() { final guardedValue = map['sqlVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
