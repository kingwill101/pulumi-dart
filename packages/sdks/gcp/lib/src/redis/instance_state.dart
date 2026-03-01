// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy.dart';
import 'instance_maintenance_schedule.dart';
import 'instance_node.dart';
import 'instance_persistence_config.dart';
import 'instance_server_ca_cert.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones.
  /// If provided, it must be a different zone from the one provided in
  /// [locationId].
  final pulumi.Input<String>? alternativeLocationId;
  /// Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// instance. If set to "true" AUTH is enabled on the instance.
  /// Default value is "false" meaning AUTH is disabled.
  final pulumi.Input<bool>? authEnabled;
  /// AUTH String set on the instance. This field will only be populated if auth_enabled is true.
  final pulumi.Input<String>? authString;
  /// The full name of the Google Compute Engine network to which the
  /// instance is connected. If left unspecified, the default network
  /// will be used.
  final pulumi.Input<String>? authorizedNetwork;
  /// The connection mode of the Redis instance.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`.
  final pulumi.Input<String>? connectMode;
  /// (Output)
  /// The time when the certificate was created.
  final pulumi.Input<String>? createTime;
  /// The current zone where the Redis endpoint is placed.
  /// For Basic Tier instances, this will always be the same as the
  /// [locationId] provided by the user at creation time. For Standard Tier
  /// instances, this can be either [locationId] or [alternativeLocationId]
  /// and can change after a failover event.
  final pulumi.Input<String>? currentLocationId;
  /// Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// instance. If this is provided, CMEK is enabled.
  final pulumi.Input<String>? customerManagedKey;
  final pulumi.Input<bool>? deletionProtection;
  /// An arbitrary and optional user-provided name for the instance.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  final pulumi.Input<String>? effectiveReservedIpRange;
  /// Hostname or IP address of the exposed Redis endpoint used by clients
  /// to connect to the service.
  final pulumi.Input<String>? host;
  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The zone where the instance will be provisioned. If not provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against
  /// zonal failures. If [alternativeLocationId] is also provided, it must
  /// be different from [locationId].
  final pulumi.Input<String>? locationId;
  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMaintenanceSchedule>>? maintenanceSchedules;
  /// The self service update maintenance version.
  final pulumi.Input<String>? maintenanceVersion;
  /// Redis memory size in GiB.
  final pulumi.Input<int>? memorySizeGb;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// Output only. Info per node.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNode>>? nodes;
  /// Persistence configuration for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfig>? persistenceConfig;
  /// Output only. Cloud IAM identity used by import / export operations
  /// to transfer data to/from Cloud Storage. Format is "serviceAccount:".
  /// The value may change over time for a given instance so should be
  /// checked before each import/export operation.
  final pulumi.Input<String>? persistenceIamIdentity;
  /// The port number of the exposed Redis endpoint.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only.
  /// Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes
  /// will exhibit some lag behind the primary. Write requests must target 'host'.
  final pulumi.Input<String>? readEndpoint;
  /// Output only. The port number of the exposed readonly redis endpoint. Standard tier only.
  /// Write requests should target 'port'.
  final pulumi.Input<int>? readEndpointPort;
  /// Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
  /// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
  /// instance cannot scale up or down the number of replicas.
  /// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
  /// can scale up and down the number of replicas.
  /// Possible values are: `READ_REPLICAS_DISABLED`, `READ_REPLICAS_ENABLED`.
  final pulumi.Input<String>? readReplicasMode;
  /// Redis configuration parameters, according to http://redis.io/topics/config.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
  final pulumi.Input<Map<String, String>>? redisConfigs;
  /// The version of Redis software. If not provided, latest supported
  /// version will be used. Please check the API documentation linked
  /// at the top for the latest valid values.
  final pulumi.Input<String>? redisVersion;
  /// The name of the Redis region of the instance.
  final pulumi.Input<String>? region;
  /// Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
  /// for a Standard Tier instance, the only valid value is 1 and the default is 1.
  /// The valid value for basic tier is 0 and the default is also 0.
  final pulumi.Input<int>? replicaCount;
  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  final pulumi.Input<String>? reservedIpRange;
  /// Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
  /// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  final pulumi.Input<String>? secondaryIpRange;
  /// List of server CA certificates for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceServerCaCert>>? serverCaCerts;
  /// The service tier of the instance. Must be one of these values:
  /// - BASIC: standalone instance
  /// - STANDARD_HA: highly available primary/replica instances
  /// Default value is `BASIC`.
  /// Possible values are: `BASIC`, `STANDARD_HA`.
  final pulumi.Input<String>? tier;
  /// The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  /// - SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication
  /// Default value is `DISABLED`.
  /// Possible values are: `SERVER_AUTHENTICATION`, `DISABLED`.
  final pulumi.Input<String>? transitEncryptionMode;

  /// Creates a new [InstanceState].
  /// [alternativeLocationId] Only applicable to STANDARD_HA tier which protects the instance
  /// [authEnabled] Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// [authString] AUTH String set on the instance. This field will only be populated if auth_enabled is true.
  /// [authorizedNetwork] The full name of the Google Compute Engine network to which the
  /// [connectMode] The connection mode of the Redis instance.
  /// [createTime] (Output)
  /// [currentLocationId] The current zone where the Redis endpoint is placed.
  /// [customerManagedKey] Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// [deletionProtection] Optional.
  /// [displayName] An arbitrary and optional user-provided name for the instance.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveReservedIpRange] The CIDR range of internal addresses that are reserved for this
  /// [host] Hostname or IP address of the exposed Redis endpoint used by clients
  /// [labels] Resource labels to represent user provided metadata.
  /// [locationId] The zone where the instance will be provisioned. If not provided,
  /// [maintenancePolicy] Maintenance policy for an instance.
  /// [maintenanceSchedules] Upcoming maintenance schedule.
  /// [maintenanceVersion] The self service update maintenance version.
  /// [memorySizeGb] Redis memory size in GiB.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [nodes] Output only. Info per node.
  /// [persistenceConfig] Persistence configuration for an instance.
  /// [persistenceIamIdentity] Output only. Cloud IAM identity used by import / export operations
  /// [port] The port number of the exposed Redis endpoint.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [readEndpoint] Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only.
  /// [readEndpointPort] Output only. The port number of the exposed readonly redis endpoint. Standard tier only.
  /// [readReplicasMode] Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// [redisConfigs] Redis configuration parameters, according to http://redis.io/topics/config.
  /// [redisVersion] The version of Redis software. If not provided, latest supported
  /// [region] The name of the Redis region of the instance.
  /// [replicaCount] Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this
  /// [secondaryIpRange] Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// [serverCaCerts] List of server CA certificates for the instance.
  /// [tier] The service tier of the instance. Must be one of these values:
  /// [transitEncryptionMode] The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  InstanceState({
    pulumi.Output<String>? alternativeLocationId,
    pulumi.Output<bool>? authEnabled,
    pulumi.Output<String>? authString,
    pulumi.Output<String>? authorizedNetwork,
    pulumi.Output<String>? connectMode,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? currentLocationId,
    pulumi.Output<String>? customerManagedKey,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? effectiveReservedIpRange,
    pulumi.Output<String>? host,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? locationId,
    pulumi.Output<InstanceMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<List<InstanceMaintenanceSchedule>>? maintenanceSchedules,
    pulumi.Output<String>? maintenanceVersion,
    pulumi.Output<int>? memorySizeGb,
    pulumi.Output<String>? name,
    pulumi.Output<List<InstanceNode>>? nodes,
    pulumi.Output<InstancePersistenceConfig>? persistenceConfig,
    pulumi.Output<String>? persistenceIamIdentity,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? readEndpoint,
    pulumi.Output<int>? readEndpointPort,
    pulumi.Output<String>? readReplicasMode,
    pulumi.Output<Map<String, String>>? redisConfigs,
    pulumi.Output<String>? redisVersion,
    pulumi.Output<String>? region,
    pulumi.Output<int>? replicaCount,
    pulumi.Output<String>? reservedIpRange,
    pulumi.Output<String>? secondaryIpRange,
    pulumi.Output<List<InstanceServerCaCert>>? serverCaCerts,
    pulumi.Output<String>? tier,
    pulumi.Output<String>? transitEncryptionMode,
  }) :
      alternativeLocationId = pulumi.Input.asOptionalInput<String>(alternativeLocationId),
      authEnabled = pulumi.Input.asOptionalInput<bool>(authEnabled),
      authString = pulumi.Input.asOptionalInput<String>(authString),
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      connectMode = pulumi.Input.asOptionalInput<String>(connectMode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      currentLocationId = pulumi.Input.asOptionalInput<String>(currentLocationId),
      customerManagedKey = pulumi.Input.asOptionalInput<String>(customerManagedKey),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      effectiveReservedIpRange = pulumi.Input.asOptionalInput<String>(effectiveReservedIpRange),
      host = pulumi.Input.asOptionalInput<String>(host),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      locationId = pulumi.Input.asOptionalInput<String>(locationId),
      maintenancePolicy = pulumi.Input.asOptionalInput<InstanceMaintenancePolicy>(maintenancePolicy),
      maintenanceSchedules = pulumi.Input.asOptionalInput<List<InstanceMaintenanceSchedule>>(maintenanceSchedules),
      maintenanceVersion = pulumi.Input.asOptionalInput<String>(maintenanceVersion),
      memorySizeGb = pulumi.Input.asOptionalInput<int>(memorySizeGb),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodes = pulumi.Input.asOptionalInput<List<InstanceNode>>(nodes),
      persistenceConfig = pulumi.Input.asOptionalInput<InstancePersistenceConfig>(persistenceConfig),
      persistenceIamIdentity = pulumi.Input.asOptionalInput<String>(persistenceIamIdentity),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      readEndpoint = pulumi.Input.asOptionalInput<String>(readEndpoint),
      readEndpointPort = pulumi.Input.asOptionalInput<int>(readEndpointPort),
      readReplicasMode = pulumi.Input.asOptionalInput<String>(readReplicasMode),
      redisConfigs = pulumi.Input.asOptionalInput<Map<String, String>>(redisConfigs),
      redisVersion = pulumi.Input.asOptionalInput<String>(redisVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      reservedIpRange = pulumi.Input.asOptionalInput<String>(reservedIpRange),
      secondaryIpRange = pulumi.Input.asOptionalInput<String>(secondaryIpRange),
      serverCaCerts = pulumi.Input.asOptionalInput<List<InstanceServerCaCert>>(serverCaCerts),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      transitEncryptionMode = pulumi.Input.asOptionalInput<String>(transitEncryptionMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeLocationId': ?alternativeLocationId,
      'authEnabled': ?authEnabled,
      'authString': ?authString,
      'authorizedNetwork': ?authorizedNetwork,
      'connectMode': ?connectMode,
      'createTime': ?createTime,
      'currentLocationId': ?currentLocationId,
      'customerManagedKey': ?customerManagedKey,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'effectiveReservedIpRange': ?effectiveReservedIpRange,
      'host': ?host,
      'labels': ?labels,
      'locationId': ?locationId,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<InstanceMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<InstanceMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceVersion': ?maintenanceVersion,
      'memorySizeGb': ?memorySizeGb,
      'name': ?name,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<InstanceNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<InstanceNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'persistenceIamIdentity': ?persistenceIamIdentity,
      'port': ?port,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'readEndpoint': ?readEndpoint,
      'readEndpointPort': ?readEndpointPort,
      'readReplicasMode': ?readReplicasMode,
      'redisConfigs': ?redisConfigs,
      'redisVersion': ?redisVersion,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'reservedIpRange': ?reservedIpRange,
      'secondaryIpRange': ?secondaryIpRange,
      'serverCaCerts': ?pulumi.Input.mapOptionalInputValue<List<InstanceServerCaCert>, List<Map<String, dynamic>>>(serverCaCerts, (value) => pulumi.Input.encodeList<InstanceServerCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tier': ?tier,
      'transitEncryptionMode': ?transitEncryptionMode,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      alternativeLocationId: map['alternativeLocationId'] == null ? null : pulumi.Output.create<String>(map['alternativeLocationId'] as String),
      authEnabled: map['authEnabled'] == null ? null : pulumi.Output.create<bool>(map['authEnabled'] as bool),
      authString: map['authString'] == null ? null : pulumi.Output.create<String>(map['authString'] as String),
      authorizedNetwork: map['authorizedNetwork'] == null ? null : pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      connectMode: map['connectMode'] == null ? null : pulumi.Output.create<String>(map['connectMode'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      currentLocationId: map['currentLocationId'] == null ? null : pulumi.Output.create<String>(map['currentLocationId'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<String>(map['customerManagedKey'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      effectiveReservedIpRange: map['effectiveReservedIpRange'] == null ? null : pulumi.Output.create<String>(map['effectiveReservedIpRange'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      locationId: map['locationId'] == null ? null : pulumi.Output.create<String>(map['locationId'] as String),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<InstanceMaintenancePolicy>(InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : pulumi.Output.create<List<InstanceMaintenanceSchedule>>(pulumi.Input.decodeList<InstanceMaintenanceSchedule>(map['maintenanceSchedules'], (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : pulumi.Output.create<String>(map['maintenanceVersion'] as String),
      memorySizeGb: map['memorySizeGb'] == null ? null : pulumi.Output.create<int>(map['memorySizeGb'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<InstanceNode>>(pulumi.Input.decodeList<InstanceNode>(map['nodes'], (value) => InstanceNode.fromMap((value as Map).cast<String, dynamic>()))),
      persistenceConfig: map['persistenceConfig'] == null ? null : pulumi.Output.create<InstancePersistenceConfig>(InstancePersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())),
      persistenceIamIdentity: map['persistenceIamIdentity'] == null ? null : pulumi.Output.create<String>(map['persistenceIamIdentity'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      readEndpoint: map['readEndpoint'] == null ? null : pulumi.Output.create<String>(map['readEndpoint'] as String),
      readEndpointPort: map['readEndpointPort'] == null ? null : pulumi.Output.create<int>(map['readEndpointPort'] as int),
      readReplicasMode: map['readReplicasMode'] == null ? null : pulumi.Output.create<String>(map['readReplicasMode'] as String),
      redisConfigs: map['redisConfigs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['redisConfigs'] as Map).cast<String, String>()),
      redisVersion: map['redisVersion'] == null ? null : pulumi.Output.create<String>(map['redisVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaCount: map['replicaCount'] == null ? null : pulumi.Output.create<int>(map['replicaCount'] as int),
      reservedIpRange: map['reservedIpRange'] == null ? null : pulumi.Output.create<String>(map['reservedIpRange'] as String),
      secondaryIpRange: map['secondaryIpRange'] == null ? null : pulumi.Output.create<String>(map['secondaryIpRange'] as String),
      serverCaCerts: map['serverCaCerts'] == null ? null : pulumi.Output.create<List<InstanceServerCaCert>>(pulumi.Input.decodeList<InstanceServerCaCert>(map['serverCaCerts'], (value) => InstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>()))),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : pulumi.Output.create<String>(map['transitEncryptionMode'] as String),
    );
  }
}

