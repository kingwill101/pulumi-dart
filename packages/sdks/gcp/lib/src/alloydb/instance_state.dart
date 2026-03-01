// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_client_connection_config.dart';
import 'instance_connection_pool_config.dart';
import 'instance_machine_config.dart';
import 'instance_network_config.dart';
import 'instance_observability_config.dart';
import 'instance_psc_instance_config.dart';
import 'instance_query_insights_config.dart';
import 'instance_read_pool_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// 'Specifies whether an instance needs to spin up. Once the instance is
  /// active, the activation policy can be updated to the `NEVER` to stop the
  /// instance. Likewise, the activation policy can be updated to `ALWAYS` to
  /// start the instance.
  /// There are restrictions around when an instance can/cannot be activated (for
  /// example, a read pool instance should be stopped before stopping primary
  /// etc.). Please refer to the API documentation for more details.
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.'
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.
  final pulumi.Input<String>? activationPolicy;
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final pulumi.Input<String>? availabilityType;
  /// Client connection specific configurations.
  /// Structure is documented below.
  final pulumi.Input<InstanceClientConnectionConfig>? clientConnectionConfig;
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String>? cluster;
  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  final pulumi.Input<InstanceConnectionPoolConfig>? connectionPoolConfig;
  /// Time the Instance was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String>? gceZone;
  /// The ID of the alloydb instance.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? instanceType;
  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  final pulumi.Input<String>? ipAddress;
  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  final pulumi.Input<InstanceMachineConfig>? machineConfig;
  /// The name of the instance resource.
  final pulumi.Input<String>? name;
  /// Instance level network configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkConfig>? networkConfig;
  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceObservabilityConfig>? observabilityConfig;
  /// The outbound public IP addresses for the instance. This is available ONLY when
  /// networkConfig.enableOutboundPublicIp is set to true. These IP addresses are used
  /// for outbound connections.
  final pulumi.Input<List<String>>? outboundPublicIpAddresses;
  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscInstanceConfig>? pscInstanceConfig;
  /// The public IP addresses for the Instance. This is available ONLY when
  /// networkConfig.enablePublicIp is set to true. This is the connection
  /// endpoint for an end-user application.
  final pulumi.Input<String>? publicIpAddress;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Configuration for query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceQueryInsightsConfig>? queryInsightsConfig;
  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  final pulumi.Input<InstanceReadPoolConfig>? readPoolConfig;
  /// Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final pulumi.Input<bool>? reconciling;
  /// The current state of the alloydb instance.
  final pulumi.Input<String>? state;
  /// The system-generated UID of the resource.
  final pulumi.Input<String>? uid;
  /// Time the Instance was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InstanceState].
  /// [activationPolicy] 'Specifies whether an instance needs to spin up. Once the instance is
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// [availabilityType] 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// [clientConnectionConfig] Client connection specific configurations.
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [connectionPoolConfig] Configuration for Managed Connection Pool.
  /// [createTime] Time the Instance was created in UTC.
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceId] The ID of the alloydb instance.
  /// [instanceType] Optional.
  /// [ipAddress] The IP address for the Instance. This is the connection endpoint for an end-user application.
  /// [labels] User-defined labels for the alloydb instance.
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [name] The name of the instance resource.
  /// [networkConfig] Instance level network configuration.
  /// [observabilityConfig] Configuration for enhanced query insights.
  /// [outboundPublicIpAddresses] The outbound public IP addresses for the instance. This is available ONLY when
  /// [pscInstanceConfig] Configuration for Private Service Connect (PSC) for the instance.
  /// [publicIpAddress] The public IP addresses for the Instance. This is available ONLY when
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [queryInsightsConfig] Configuration for query insights.
  /// [readPoolConfig] Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// [reconciling] Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [state] The current state of the alloydb instance.
  /// [uid] The system-generated UID of the resource.
  /// [updateTime] Time the Instance was updated in UTC.
  InstanceState({
    pulumi.Output<String>? activationPolicy,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? availabilityType,
    pulumi.Output<InstanceClientConnectionConfig>? clientConnectionConfig,
    pulumi.Output<String>? cluster,
    pulumi.Output<InstanceConnectionPoolConfig>? connectionPoolConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? databaseFlags,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? gceZone,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<InstanceMachineConfig>? machineConfig,
    pulumi.Output<String>? name,
    pulumi.Output<InstanceNetworkConfig>? networkConfig,
    pulumi.Output<InstanceObservabilityConfig>? observabilityConfig,
    pulumi.Output<List<String>>? outboundPublicIpAddresses,
    pulumi.Output<InstancePscInstanceConfig>? pscInstanceConfig,
    pulumi.Output<String>? publicIpAddress,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<InstanceQueryInsightsConfig>? queryInsightsConfig,
    pulumi.Output<InstanceReadPoolConfig>? readPoolConfig,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      activationPolicy = pulumi.Input.asOptionalInput<String>(activationPolicy),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      availabilityType = pulumi.Input.asOptionalInput<String>(availabilityType),
      clientConnectionConfig = pulumi.Input.asOptionalInput<InstanceClientConnectionConfig>(clientConnectionConfig),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      connectionPoolConfig = pulumi.Input.asOptionalInput<InstanceConnectionPoolConfig>(connectionPoolConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      databaseFlags = pulumi.Input.asOptionalInput<Map<String, String>>(databaseFlags),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gceZone = pulumi.Input.asOptionalInput<String>(gceZone),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineConfig = pulumi.Input.asOptionalInput<InstanceMachineConfig>(machineConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<InstanceNetworkConfig>(networkConfig),
      observabilityConfig = pulumi.Input.asOptionalInput<InstanceObservabilityConfig>(observabilityConfig),
      outboundPublicIpAddresses = pulumi.Input.asOptionalInput<List<String>>(outboundPublicIpAddresses),
      pscInstanceConfig = pulumi.Input.asOptionalInput<InstancePscInstanceConfig>(pscInstanceConfig),
      publicIpAddress = pulumi.Input.asOptionalInput<String>(publicIpAddress),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      queryInsightsConfig = pulumi.Input.asOptionalInput<InstanceQueryInsightsConfig>(queryInsightsConfig),
      readPoolConfig = pulumi.Input.asOptionalInput<InstanceReadPoolConfig>(readPoolConfig),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'annotations': ?annotations,
      'availabilityType': ?availabilityType,
      'clientConnectionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceClientConnectionConfig, Map<String, dynamic>>(clientConnectionConfig, (value) => value.toMap()),
      'cluster': ?cluster,
      'connectionPoolConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConnectionPoolConfig, Map<String, dynamic>>(connectionPoolConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'databaseFlags': ?databaseFlags,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'gceZone': ?gceZone,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'ipAddress': ?ipAddress,
      'labels': ?labels,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<InstanceMachineConfig, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'observabilityConfig': ?pulumi.Input.mapOptionalInputValue<InstanceObservabilityConfig, Map<String, dynamic>>(observabilityConfig, (value) => value.toMap()),
      'outboundPublicIpAddresses': ?outboundPublicIpAddresses,
      'pscInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePscInstanceConfig, Map<String, dynamic>>(pscInstanceConfig, (value) => value.toMap()),
      'publicIpAddress': ?publicIpAddress,
      'pulumiLabels': ?pulumiLabels,
      'queryInsightsConfig': ?pulumi.Input.mapOptionalInputValue<InstanceQueryInsightsConfig, Map<String, dynamic>>(queryInsightsConfig, (value) => value.toMap()),
      'readPoolConfig': ?pulumi.Input.mapOptionalInputValue<InstanceReadPoolConfig, Map<String, dynamic>>(readPoolConfig, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      activationPolicy: map['activationPolicy'] == null ? null : pulumi.Output.create<String>(map['activationPolicy'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      availabilityType: map['availabilityType'] == null ? null : pulumi.Output.create<String>(map['availabilityType'] as String),
      clientConnectionConfig: map['clientConnectionConfig'] == null ? null : pulumi.Output.create<InstanceClientConnectionConfig>(InstanceClientConnectionConfig.fromMap((map['clientConnectionConfig'] as Map).cast<String, dynamic>())),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      connectionPoolConfig: map['connectionPoolConfig'] == null ? null : pulumi.Output.create<InstanceConnectionPoolConfig>(InstanceConnectionPoolConfig.fromMap((map['connectionPoolConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      databaseFlags: map['databaseFlags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['databaseFlags'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gceZone: map['gceZone'] == null ? null : pulumi.Output.create<String>(map['gceZone'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      machineConfig: map['machineConfig'] == null ? null : pulumi.Output.create<InstanceMachineConfig>(InstanceMachineConfig.fromMap((map['machineConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<InstanceNetworkConfig>(InstanceNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      observabilityConfig: map['observabilityConfig'] == null ? null : pulumi.Output.create<InstanceObservabilityConfig>(InstanceObservabilityConfig.fromMap((map['observabilityConfig'] as Map).cast<String, dynamic>())),
      outboundPublicIpAddresses: map['outboundPublicIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['outboundPublicIpAddresses'] as List).cast<String>()),
      pscInstanceConfig: map['pscInstanceConfig'] == null ? null : pulumi.Output.create<InstancePscInstanceConfig>(InstancePscInstanceConfig.fromMap((map['pscInstanceConfig'] as Map).cast<String, dynamic>())),
      publicIpAddress: map['publicIpAddress'] == null ? null : pulumi.Output.create<String>(map['publicIpAddress'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      queryInsightsConfig: map['queryInsightsConfig'] == null ? null : pulumi.Output.create<InstanceQueryInsightsConfig>(InstanceQueryInsightsConfig.fromMap((map['queryInsightsConfig'] as Map).cast<String, dynamic>())),
      readPoolConfig: map['readPoolConfig'] == null ? null : pulumi.Output.create<InstanceReadPoolConfig>(InstanceReadPoolConfig.fromMap((map['readPoolConfig'] as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

