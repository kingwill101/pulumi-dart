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
  /// AUTH String set on the instance. This field will only be populated if authEnabled is true.
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the instance.
  /// When a`terraform destroy` or `pulumi up` would delete the instance,
  /// the command will fail if this field is not set to false in Terraform state.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the instance will fail.
  /// When the field is set to false, deleting the instance is allowed.
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [authString] AUTH String set on the instance. This field will only be populated if authEnabled is true.
  /// [authorizedNetwork] The full name of the Google Compute Engine network to which the
  /// [connectMode] The connection mode of the Redis instance.
  /// [createTime] (Output)
  /// [currentLocationId] The current zone where the Redis endpoint is placed.
  /// [customerManagedKey] Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the instance.
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
  const InstanceState({
    this.alternativeLocationId,
    this.authEnabled,
    this.authString,
    this.authorizedNetwork,
    this.connectMode,
    this.createTime,
    this.currentLocationId,
    this.customerManagedKey,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.effectiveReservedIpRange,
    this.host,
    this.labels,
    this.locationId,
    this.maintenancePolicy,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.memorySizeGb,
    this.name,
    this.nodes,
    this.persistenceConfig,
    this.persistenceIamIdentity,
    this.port,
    this.project,
    this.pulumiLabels,
    this.readEndpoint,
    this.readEndpointPort,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.region,
    this.replicaCount,
    this.reservedIpRange,
    this.secondaryIpRange,
    this.serverCaCerts,
    this.tier,
    this.transitEncryptionMode,
  });

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
      'deletionPolicy': ?deletionPolicy,
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
      alternativeLocationId: (() { final guardedValue = map['alternativeLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authEnabled: (() { final guardedValue = map['authEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authString: (() { final guardedValue = map['authString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectMode: (() { final guardedValue = map['connectMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentLocationId: (() { final guardedValue = map['currentLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveReservedIpRange: (() { final guardedValue = map['effectiveReservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceMaintenanceSchedule>(guardedValue, (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySizeGb: (() { final guardedValue = map['memorySizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNode>(guardedValue, (value) => InstanceNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      persistenceConfig: (() { final guardedValue = map['persistenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistenceIamIdentity: (() { final guardedValue = map['persistenceIamIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      readEndpoint: (() { final guardedValue = map['readEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readEndpointPort: (() { final guardedValue = map['readEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readReplicasMode: (() { final guardedValue = map['readReplicasMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisConfigs: (() { final guardedValue = map['redisConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      redisVersion: (() { final guardedValue = map['redisVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpRange: (() { final guardedValue = map['secondaryIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCaCerts: (() { final guardedValue = map['serverCaCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceServerCaCert>(guardedValue, (value) => InstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
