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

/// {@template pulumi_alloydb_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_instance_instance_args_doc}
class InstanceArgs {
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
  final pulumi.Input<String> cluster;
  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  final pulumi.Input<InstanceConnectionPoolConfig>? connectionPoolConfig;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String>? displayName;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String>? gceZone;
  /// The ID of the alloydb instance.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceType;
  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  final pulumi.Input<InstanceMachineConfig>? machineConfig;
  /// Instance level network configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkConfig>? networkConfig;
  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceObservabilityConfig>? observabilityConfig;
  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscInstanceConfig>? pscInstanceConfig;
  /// Configuration for query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceQueryInsightsConfig>? queryInsightsConfig;
  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  final pulumi.Input<InstanceReadPoolConfig>? readPoolConfig;

  /// Creates a new [InstanceArgs].
  /// [activationPolicy] 'Specifies whether an instance needs to spin up. Once the instance is
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// [availabilityType] 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// [clientConnectionConfig] Client connection specific configurations.
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [connectionPoolConfig] Configuration for Managed Connection Pool.
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceId] The ID of the alloydb instance.
  /// [instanceType] Required.
  /// [labels] User-defined labels for the alloydb instance.
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [networkConfig] Instance level network configuration.
  /// [observabilityConfig] Configuration for enhanced query insights.
  /// [pscInstanceConfig] Configuration for Private Service Connect (PSC) for the instance.
  /// [queryInsightsConfig] Configuration for query insights.
  /// [readPoolConfig] Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  InstanceArgs({
    this.activationPolicy,
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    required this.cluster,
    this.connectionPoolConfig,
    this.databaseFlags,
    this.displayName,
    this.gceZone,
    required this.instanceId,
    required this.instanceType,
    this.labels,
    this.machineConfig,
    this.networkConfig,
    this.observabilityConfig,
    this.pscInstanceConfig,
    this.queryInsightsConfig,
    this.readPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'annotations': ?annotations,
      'availabilityType': ?availabilityType,
      'clientConnectionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceClientConnectionConfig, Map<String, dynamic>>(clientConnectionConfig, (value) => value.toMap()),
      'cluster': cluster,
      'connectionPoolConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConnectionPoolConfig, Map<String, dynamic>>(connectionPoolConfig, (value) => value.toMap()),
      'databaseFlags': ?databaseFlags,
      'displayName': ?displayName,
      'gceZone': ?gceZone,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'labels': ?labels,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<InstanceMachineConfig, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'observabilityConfig': ?pulumi.Input.mapOptionalInputValue<InstanceObservabilityConfig, Map<String, dynamic>>(observabilityConfig, (value) => value.toMap()),
      'pscInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePscInstanceConfig, Map<String, dynamic>>(pscInstanceConfig, (value) => value.toMap()),
      'queryInsightsConfig': ?pulumi.Input.mapOptionalInputValue<InstanceQueryInsightsConfig, Map<String, dynamic>>(queryInsightsConfig, (value) => value.toMap()),
      'readPoolConfig': ?pulumi.Input.mapOptionalInputValue<InstanceReadPoolConfig, Map<String, dynamic>>(readPoolConfig, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      activationPolicy: map['activationPolicy'] == null ? null : (map['activationPolicy']! as String).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      availabilityType: map['availabilityType'] == null ? null : (map['availabilityType']! as String).input(),
      clientConnectionConfig: map['clientConnectionConfig'] == null ? null : (InstanceClientConnectionConfig.fromMap((map['clientConnectionConfig']! as Map).cast<String, dynamic>())).input(),
      cluster: (map['cluster'] as String).input(),
      connectionPoolConfig: map['connectionPoolConfig'] == null ? null : (InstanceConnectionPoolConfig.fromMap((map['connectionPoolConfig']! as Map).cast<String, dynamic>())).input(),
      databaseFlags: map['databaseFlags'] == null ? null : ((map['databaseFlags']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      gceZone: map['gceZone'] == null ? null : (map['gceZone']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineConfig: map['machineConfig'] == null ? null : (InstanceMachineConfig.fromMap((map['machineConfig']! as Map).cast<String, dynamic>())).input(),
      networkConfig: map['networkConfig'] == null ? null : (InstanceNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      observabilityConfig: map['observabilityConfig'] == null ? null : (InstanceObservabilityConfig.fromMap((map['observabilityConfig']! as Map).cast<String, dynamic>())).input(),
      pscInstanceConfig: map['pscInstanceConfig'] == null ? null : (InstancePscInstanceConfig.fromMap((map['pscInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      queryInsightsConfig: map['queryInsightsConfig'] == null ? null : (InstanceQueryInsightsConfig.fromMap((map['queryInsightsConfig']! as Map).cast<String, dynamic>())).input(),
      readPoolConfig: map['readPoolConfig'] == null ? null : (InstanceReadPoolConfig.fromMap((map['readPoolConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

