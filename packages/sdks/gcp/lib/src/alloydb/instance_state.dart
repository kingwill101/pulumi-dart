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
  final pulumi.Input<String?>? activationPolicy;
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final pulumi.Input<String?>? availabilityType;
  /// Client connection specific configurations.
  /// Structure is documented below.
  final pulumi.Input<InstanceClientConnectionConfig?>? clientConnectionConfig;
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String?>? cluster;
  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  final pulumi.Input<InstanceConnectionPoolConfig?>? connectionPoolConfig;
  /// Time the Instance was created in UTC.
  final pulumi.Input<String?>? createTime;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  final pulumi.Input<Map<String, String>?>? databaseFlags;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String?>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String?>? gceZone;
  /// The ID of the alloydb instance.
  final pulumi.Input<String?>? instanceId;
  /// The type of the instance.
  /// If the instance type is READ_POOL, provide the associated PRIMARY/SECONDARY instance in the `dependsOn` meta-data attribute.
  /// If the instance type is SECONDARY, point to the clusterType of the associated secondary cluster instead of mentioning SECONDARY.
  /// Example: {instance_type = google_alloydb_cluster.&lt;secondary_cluster_name&gt;.cluster_type} instead of {instance_type = SECONDARY}
  /// If the instance type is SECONDARY, the terraform delete instance operation does not delete the secondary instance but abandons it instead.
  /// Use deletionPolicy = "FORCE" in the associated secondary cluster and delete the cluster forcefully to delete the secondary cluster as well its associated secondary instance.
  /// Users can undo the delete secondary instance action by importing the deleted secondary instance by calling terraform import.
  /// Possible values are: `PRIMARY`, `READ_POOL`, `SECONDARY`.
  final pulumi.Input<String?>? instanceType;
  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  final pulumi.Input<String?>? ipAddress;
  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  final pulumi.Input<InstanceMachineConfig?>? machineConfig;
  /// The name of the instance resource.
  final pulumi.Input<String?>? name;
  /// Instance level network configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkConfig?>? networkConfig;
  /// (Optional, Beta)
  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceObservabilityConfig?>? observabilityConfig;
  /// The outbound public IP addresses for the instance. This is available ONLY when
  /// networkConfig.enableOutboundPublicIp is set to true. These IP addresses are used
  /// for outbound connections.
  final pulumi.Input<List<String>?>? outboundPublicIpAddresses;
  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscInstanceConfig?>? pscInstanceConfig;
  /// The public IP addresses for the Instance. This is available ONLY when
  /// networkConfig.enablePublicIp is set to true. This is the connection
  /// endpoint for an end-user application.
  final pulumi.Input<String?>? publicIpAddress;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Configuration for query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceQueryInsightsConfig?>? queryInsightsConfig;
  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  final pulumi.Input<InstanceReadPoolConfig?>? readPoolConfig;
  /// Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final pulumi.Input<bool?>? reconciling;
  /// The current state of the alloydb instance.
  final pulumi.Input<String?>? state;
  /// The system-generated UID of the resource.
  final pulumi.Input<String?>? uid;
  /// Time the Instance was updated in UTC.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [InstanceState].
  /// [activationPolicy] 'Specifies whether an instance needs to spin up. Once the instance is
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// [availabilityType] 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// [clientConnectionConfig] Client connection specific configurations.
  /// [cluster] Identifies the alloydb cluster. Must be in the format
  /// [connectionPoolConfig] Configuration for Managed Connection Pool.
  /// [createTime] Time the Instance was created in UTC.
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceId] The ID of the alloydb instance.
  /// [instanceType] The type of the instance.
  /// [ipAddress] The IP address for the Instance. This is the connection endpoint for an end-user application.
  /// [labels] User-defined labels for the alloydb instance.
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [name] The name of the instance resource.
  /// [networkConfig] Instance level network configuration.
  /// [observabilityConfig] (Optional, Beta)
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
  const InstanceState({
    this.activationPolicy,
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    this.cluster,
    this.connectionPoolConfig,
    this.createTime,
    this.databaseFlags,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.gceZone,
    this.instanceId,
    this.instanceType,
    this.ipAddress,
    this.labels,
    this.machineConfig,
    this.name,
    this.networkConfig,
    this.observabilityConfig,
    this.outboundPublicIpAddresses,
    this.pscInstanceConfig,
    this.publicIpAddress,
    this.pulumiLabels,
    this.queryInsightsConfig,
    this.readPoolConfig,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

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
      'deletionPolicy': ?deletionPolicy,
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
      activationPolicy: (() { final guardedValue = map['activationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientConnectionConfig: (() { final guardedValue = map['clientConnectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceClientConnectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionPoolConfig: (() { final guardedValue = map['connectionPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConnectionPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gceZone: (() { final guardedValue = map['gceZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineConfig: (() { final guardedValue = map['machineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMachineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      observabilityConfig: (() { final guardedValue = map['observabilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceObservabilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundPublicIpAddresses: (() { final guardedValue = map['outboundPublicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pscInstanceConfig: (() { final guardedValue = map['pscInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePscInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      queryInsightsConfig: (() { final guardedValue = map['queryInsightsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceQueryInsightsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readPoolConfig: (() { final guardedValue = map['readPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceReadPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
