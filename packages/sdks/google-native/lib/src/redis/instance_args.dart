// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_mode.dart';
import 'instance_read_replicas_mode.dart';
import 'instance_suspension_reasons_item.dart';
import 'instance_tier.dart';
import 'instance_transit_encryption_mode.dart';
import 'maintenance_policy.dart';
import 'persistence_config.dart';

/// {@template pulumi_redis_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_redis_v1_instance_args_doc}
class InstanceArgs {
  /// Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  final pulumi.Input<String>? alternativeLocationId;
  /// Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  final pulumi.Input<bool>? authEnabled;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  final pulumi.Input<String>? authorizedNetwork;
  /// Optional. The available maintenance versions that an instance could update to.
  final pulumi.Input<List<String>>? availableMaintenanceVersions;
  /// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final pulumi.Input<InstanceConnectMode>? connectMode;
  /// Optional. The KMS key reference that the customer provides when trying to create the instance.
  final pulumi.Input<String>? customerManagedKey;
  /// An arbitrary and optional user-provided name for the instance.
  final pulumi.Input<String>? displayName;
  /// Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  final pulumi.Input<String> instanceId;
  /// Resource labels to represent user provided metadata
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  final pulumi.Input<String>? location;
  /// Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  final pulumi.Input<MaintenancePolicy>? maintenancePolicy;
  /// Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  final pulumi.Input<String>? maintenanceVersion;
  /// Redis memory size in GiB.
  final pulumi.Input<int> memorySizeGb;
  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  final pulumi.Input<String>? name;
  /// Optional. Persistence configuration parameters
  final pulumi.Input<PersistenceConfig>? persistenceConfig;
  final pulumi.Input<String>? project;
  /// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  final pulumi.Input<InstanceReadReplicasMode>? readReplicasMode;
  /// Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  final pulumi.Input<Map<String, String>>? redisConfigs;
  /// Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  final pulumi.Input<String>? redisVersion;
  /// Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  final pulumi.Input<int>? replicaCount;
  /// Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  final pulumi.Input<String>? reservedIpRange;
  /// Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  final pulumi.Input<String>? secondaryIpRange;
  /// Optional. reasons that causes instance in "SUSPENDED" state.
  final pulumi.Input<List<InstanceSuspensionReasonsItem>>? suspensionReasons;
  /// The service tier of the instance.
  final pulumi.Input<InstanceTier> tier;
  /// Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  final pulumi.Input<InstanceTransitEncryptionMode>? transitEncryptionMode;

  /// Creates a new [InstanceArgs].
  /// [alternativeLocationId] Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  /// [authEnabled] Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  /// [authorizedNetwork] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [availableMaintenanceVersions] Optional. The available maintenance versions that an instance could update to.
  /// [connectMode] Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  /// [customerManagedKey] Optional. The KMS key reference that the customer provides when trying to create the instance.
  /// [displayName] An arbitrary and optional user-provided name for the instance.
  /// [instanceId] Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project / location
  /// [labels] Resource labels to represent user provided metadata
  /// [location] Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  /// [maintenancePolicy] Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  /// [maintenanceVersion] Optional. The self service update maintenance version. The version is date based such as "20210712_00_00".
  /// [memorySizeGb] Redis memory size in GiB.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  /// [persistenceConfig] Optional. Persistence configuration parameters
  /// [project] Optional.
  /// [readReplicasMode] Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
  /// [redisConfigs] Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  /// [redisVersion] Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  /// [replicaCount] Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  /// [reservedIpRange] Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  /// [secondaryIpRange] Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or "auto".
  /// [suspensionReasons] Optional. reasons that causes instance in "SUSPENDED" state.
  /// [tier] The service tier of the instance.
  /// [transitEncryptionMode] Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  InstanceArgs({
    this.alternativeLocationId,
    this.authEnabled,
    this.authorizedNetwork,
    this.availableMaintenanceVersions,
    this.connectMode,
    this.customerManagedKey,
    this.displayName,
    required this.instanceId,
    this.labels,
    this.location,
    this.maintenancePolicy,
    this.maintenanceVersion,
    required this.memorySizeGb,
    this.name,
    this.persistenceConfig,
    this.project,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.replicaCount,
    this.reservedIpRange,
    this.secondaryIpRange,
    this.suspensionReasons,
    required this.tier,
    this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeLocationId': ?alternativeLocationId,
      'authEnabled': ?authEnabled,
      'authorizedNetwork': ?authorizedNetwork,
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'connectMode': ?pulumi.Input.mapOptionalInputValue<InstanceConnectMode, String>(connectMode, (value) => value.value),
      'customerManagedKey': ?customerManagedKey,
      'displayName': ?displayName,
      'instanceId': instanceId,
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<MaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceVersion': ?maintenanceVersion,
      'memorySizeGb': memorySizeGb,
      'name': ?name,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<PersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'readReplicasMode': ?pulumi.Input.mapOptionalInputValue<InstanceReadReplicasMode, String>(readReplicasMode, (value) => value.value),
      'redisConfigs': ?redisConfigs,
      'redisVersion': ?redisVersion,
      'replicaCount': ?replicaCount,
      'reservedIpRange': ?reservedIpRange,
      'secondaryIpRange': ?secondaryIpRange,
      'suspensionReasons': ?pulumi.Input.mapOptionalInputValue<List<InstanceSuspensionReasonsItem>, List<String>>(suspensionReasons, (value) => pulumi.Input.encodeList<InstanceSuspensionReasonsItem, String>(value, (value) => value.value)),
      'tier': pulumi.Input.mapInputValue<InstanceTier, String>(tier, (value) => value.value),
      'transitEncryptionMode': ?pulumi.Input.mapOptionalInputValue<InstanceTransitEncryptionMode, String>(transitEncryptionMode, (value) => value.value),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      alternativeLocationId: map['alternativeLocationId'] == null ? null : (map['alternativeLocationId'] as String).input(),
      authEnabled: map['authEnabled'] == null ? null : (map['authEnabled'] as bool).input(),
      authorizedNetwork: map['authorizedNetwork'] == null ? null : (map['authorizedNetwork'] as String).input(),
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : ((map['availableMaintenanceVersions'] as List).cast<String>()).input(),
      connectMode: map['connectMode'] == null ? null : (InstanceConnectMode.fromValue(map['connectMode'] as String)).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (map['customerManagedKey'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (MaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : (map['maintenanceVersion'] as String).input(),
      memorySizeGb: (map['memorySizeGb'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      persistenceConfig: map['persistenceConfig'] == null ? null : (PersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      readReplicasMode: map['readReplicasMode'] == null ? null : (InstanceReadReplicasMode.fromValue(map['readReplicasMode'] as String)).input(),
      redisConfigs: map['redisConfigs'] == null ? null : ((map['redisConfigs'] as Map).cast<String, String>()).input(),
      redisVersion: map['redisVersion'] == null ? null : (map['redisVersion'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      reservedIpRange: map['reservedIpRange'] == null ? null : (map['reservedIpRange'] as String).input(),
      secondaryIpRange: map['secondaryIpRange'] == null ? null : (map['secondaryIpRange'] as String).input(),
      suspensionReasons: map['suspensionReasons'] == null ? null : (pulumi.Input.decodeList<InstanceSuspensionReasonsItem>(map['suspensionReasons'], (value) => InstanceSuspensionReasonsItem.fromValue(value as String))).input(),
      tier: (InstanceTier.fromValue(map['tier'] as String)).input(),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : (InstanceTransitEncryptionMode.fromValue(map['transitEncryptionMode'] as String)).input(),
    );
  }
}

