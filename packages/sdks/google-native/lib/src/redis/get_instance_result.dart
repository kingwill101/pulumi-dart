// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_policy_response.dart';
import 'maintenance_schedule_response.dart';
import 'node_info_response.dart';
import 'persistence_config_response.dart';
import 'tls_certificate_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  final String alternativeLocationId;
  /// Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  final bool authEnabled;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final String authorizedNetwork;
  /// Optional. The available maintenance versions that an instance could update to.
  final List<String> availableMaintenanceVersions;
  /// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final String connectMode;
  /// The time the instance was created.
  final String createTime;
  /// The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
  final String currentLocationId;
  /// Optional. The KMS key reference that the customer provides when trying to create the instance.
  final String customerManagedKey;
  /// An arbitrary and optional user-provided name for the instance.
  final String displayName;
  /// Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
  final String host;
  /// Resource labels to represent user provided metadata
  final Map<String, String> labels;
  /// Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  final String location;
  /// Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  final MaintenancePolicyResponse maintenancePolicy;
  /// Date and time of upcoming maintenance events which have been scheduled.
  final MaintenanceScheduleResponse maintenanceSchedule;
  /// Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  final String maintenanceVersion;
  /// Redis memory size in GiB.
  final int memorySizeGb;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  final String name;
  /// Info per node.
  final List<NodeInfoResponse> nodes;
  /// Optional. Persistence configuration parameters
  final PersistenceConfigResponse persistenceConfig;
  /// Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is "serviceAccount:". The value may change over time for a given instance so should be checked before each import/export operation.
  final String persistenceIamIdentity;
  /// The port number of the exposed Redis endpoint.
  final int port;
  /// Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target 'host'.
  final String readEndpoint;
  /// The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target 'port'.
  final int readEndpointPort;
  /// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  final String readReplicasMode;
  /// Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  final Map<String, String> redisConfigs;
  /// Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  final String redisVersion;
  /// Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  final int replicaCount;
  /// Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  final String reservedIpRange;
  /// Optional. Output only. Reserved for future use. Zone Separation compliance state of the instance. Field name and documentation is obfuscated according to go/zs-resource-status.
  final bool satisfiesPzs;
  /// Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  final String secondaryIpRange;
  /// List of server CA certificates for the instance.
  final List<TlsCertificateResponse> serverCaCerts;
  /// The current state of this instance.
  final String state;
  /// Additional information about the current status of this instance, if available.
  final String statusMessage;
  /// Optional. reasons that causes instance in "SUSPENDED" state.
  final List<String> suspensionReasons;
  /// The service tier of the instance.
  final String tier;
  /// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  final String transitEncryptionMode;

  /// Creates a new [GetInstanceResult].
  /// [alternativeLocationId] Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  /// [authEnabled] Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  /// [authorizedNetwork] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [availableMaintenanceVersions] Optional. The available maintenance versions that an instance could update to.
  /// [connectMode] Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  /// [createTime] The time the instance was created.
  /// [currentLocationId] The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
  /// [customerManagedKey] Optional. The KMS key reference that the customer provides when trying to create the instance.
  /// [displayName] An arbitrary and optional user-provided name for the instance.
  /// [host] Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
  /// [labels] Resource labels to represent user provided metadata
  /// [location] Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  /// [maintenancePolicy] Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  /// [maintenanceSchedule] Date and time of upcoming maintenance events which have been scheduled.
  /// [maintenanceVersion] Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  /// [memorySizeGb] Redis memory size in GiB.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  /// [nodes] Info per node.
  /// [persistenceConfig] Optional. Persistence configuration parameters
  /// [persistenceIamIdentity] Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is "serviceAccount:". The value may change over time for a given instance so should be checked before each import/export operation.
  /// [port] The port number of the exposed Redis endpoint.
  /// [readEndpoint] Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target 'host'.
  /// [readEndpointPort] The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target 'port'.
  /// [readReplicasMode] Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  /// [redisConfigs] Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  /// [redisVersion] Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  /// [replicaCount] Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  /// [reservedIpRange] Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  /// [satisfiesPzs] Optional. Output only. Reserved for future use. Zone Separation compliance state of the instance. Field name and documentation is obfuscated according to go/zs-resource-status.
  /// [secondaryIpRange] Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  /// [serverCaCerts] List of server CA certificates for the instance.
  /// [state] The current state of this instance.
  /// [statusMessage] Additional information about the current status of this instance, if available.
  /// [suspensionReasons] Optional. reasons that causes instance in "SUSPENDED" state.
  /// [tier] The service tier of the instance.
  /// [transitEncryptionMode] Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  const GetInstanceResult({
    required this.alternativeLocationId,
    required this.authEnabled,
    required this.authorizedNetwork,
    required this.availableMaintenanceVersions,
    required this.connectMode,
    required this.createTime,
    required this.currentLocationId,
    required this.customerManagedKey,
    required this.displayName,
    required this.host,
    required this.labels,
    required this.location,
    required this.maintenancePolicy,
    required this.maintenanceSchedule,
    required this.maintenanceVersion,
    required this.memorySizeGb,
    required this.name,
    required this.nodes,
    required this.persistenceConfig,
    required this.persistenceIamIdentity,
    required this.port,
    required this.readEndpoint,
    required this.readEndpointPort,
    required this.readReplicasMode,
    required this.redisConfigs,
    required this.redisVersion,
    required this.replicaCount,
    required this.reservedIpRange,
    required this.satisfiesPzs,
    required this.secondaryIpRange,
    required this.serverCaCerts,
    required this.state,
    required this.statusMessage,
    required this.suspensionReasons,
    required this.tier,
    required this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeLocationId': alternativeLocationId,
      'authEnabled': authEnabled,
      'authorizedNetwork': authorizedNetwork,
      'availableMaintenanceVersions': availableMaintenanceVersions,
      'connectMode': connectMode,
      'createTime': createTime,
      'currentLocationId': currentLocationId,
      'customerManagedKey': customerManagedKey,
      'displayName': displayName,
      'host': host,
      'labels': labels,
      'location': location,
      'maintenancePolicy': maintenancePolicy.toMap(),
      'maintenanceSchedule': maintenanceSchedule.toMap(),
      'maintenanceVersion': maintenanceVersion,
      'memorySizeGb': memorySizeGb,
      'name': name,
      'nodes': pulumi.Input.encodeList<NodeInfoResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'persistenceConfig': persistenceConfig.toMap(),
      'persistenceIamIdentity': persistenceIamIdentity,
      'port': port,
      'readEndpoint': readEndpoint,
      'readEndpointPort': readEndpointPort,
      'readReplicasMode': readReplicasMode,
      'redisConfigs': redisConfigs,
      'redisVersion': redisVersion,
      'replicaCount': replicaCount,
      'reservedIpRange': reservedIpRange,
      'satisfiesPzs': satisfiesPzs,
      'secondaryIpRange': secondaryIpRange,
      'serverCaCerts': pulumi.Input.encodeList<TlsCertificateResponse, Map<String, dynamic>>(serverCaCerts, (value) => value.toMap()),
      'state': state,
      'statusMessage': statusMessage,
      'suspensionReasons': suspensionReasons,
      'tier': tier,
      'transitEncryptionMode': transitEncryptionMode,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      alternativeLocationId: map['alternativeLocationId'] as String,
      authEnabled: map['authEnabled'] as bool,
      authorizedNetwork: map['authorizedNetwork'] as String,
      availableMaintenanceVersions: (map['availableMaintenanceVersions'] as List).cast<String>(),
      connectMode: map['connectMode'] as String,
      createTime: map['createTime'] as String,
      currentLocationId: map['currentLocationId'] as String,
      customerManagedKey: map['customerManagedKey'] as String,
      displayName: map['displayName'] as String,
      host: map['host'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenancePolicy: MaintenancePolicyResponse.fromMap((map['maintenancePolicy']! as Map).cast<String, dynamic>()),
      maintenanceSchedule: MaintenanceScheduleResponse.fromMap((map['maintenanceSchedule']! as Map).cast<String, dynamic>()),
      maintenanceVersion: map['maintenanceVersion'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<NodeInfoResponse>(map['nodes']!, (value) => NodeInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      persistenceConfig: PersistenceConfigResponse.fromMap((map['persistenceConfig']! as Map).cast<String, dynamic>()),
      persistenceIamIdentity: map['persistenceIamIdentity'] as String,
      port: map['port'] as int,
      readEndpoint: map['readEndpoint'] as String,
      readEndpointPort: map['readEndpointPort'] as int,
      readReplicasMode: map['readReplicasMode'] as String,
      redisConfigs: (map['redisConfigs'] as Map).cast<String, String>(),
      redisVersion: map['redisVersion'] as String,
      replicaCount: map['replicaCount'] as int,
      reservedIpRange: map['reservedIpRange'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      secondaryIpRange: map['secondaryIpRange'] as String,
      serverCaCerts: pulumi.Input.decodeList<TlsCertificateResponse>(map['serverCaCerts']!, (value) => TlsCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      tier: map['tier'] as String,
      transitEncryptionMode: map['transitEncryptionMode'] as String,
    );
  }
}

