// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_alloydb_v1alpha.dart';
import 'instance_availability_type_alloydb_v1alpha.dart';
import 'instance_instance_type_alloydb_v1alpha.dart';
import 'machine_config_alloydb_v1alpha.dart';
import 'query_insights_instance_config_alloydb_v1alpha.dart';
import 'read_pool_config_alloydb_v1alpha.dart';
import 'update_policy.dart';

/// {@template pulumi_alloydb_v1alpha_instance_alloydb_v1alpha_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_instance_alloydb_v1alpha_args_doc}
class InstanceAlloydbV1alphaArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final pulumi.Input<InstanceAvailabilityTypeAlloydbV1alpha>? availabilityType;
  /// Optional. Client connection specific configurations
  final pulumi.Input<ClientConnectionConfigAlloydbV1alpha>? clientConnectionConfig;
  final pulumi.Input<String> clusterId;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String>? displayName;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String>? gceZone;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> instanceId;
  /// The type of the instance. Specified at creation time.
  final pulumi.Input<InstanceInstanceTypeAlloydbV1alpha> instanceType;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Configurations for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfigAlloydbV1alpha>? machineConfig;
  final pulumi.Input<String>? project;
  /// Configuration for query insights.
  final pulumi.Input<QueryInsightsInstanceConfigAlloydbV1alpha>? queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final pulumi.Input<ReadPoolConfigAlloydbV1alpha>? readPoolConfig;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  final pulumi.Input<UpdatePolicy>? updatePolicy;

  /// Creates a new [InstanceAlloydbV1alphaArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [availabilityType] Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  /// [clientConnectionConfig] Optional. Client connection specific configurations
  /// [clusterId] Required.
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceId] Required. ID of the requesting object.
  /// [instanceType] The type of the instance. Specified at creation time.
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [project] Optional.
  /// [queryInsightsConfig] Configuration for query insights.
  /// [readPoolConfig] Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [updatePolicy] Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  const InstanceAlloydbV1alphaArgs({
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    required this.clusterId,
    this.databaseFlags,
    this.displayName,
    this.etag,
    this.gceZone,
    required this.instanceId,
    required this.instanceType,
    this.labels,
    this.location,
    this.machineConfig,
    this.project,
    this.queryInsightsConfig,
    this.readPoolConfig,
    this.requestId,
    this.updatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<InstanceAvailabilityTypeAlloydbV1alpha, String>(availabilityType, (value) => value.wireValue),
      'clientConnectionConfig': ?pulumi.Input.mapOptionalInputValue<ClientConnectionConfigAlloydbV1alpha, Map<String, dynamic>>(clientConnectionConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'databaseFlags': ?databaseFlags,
      'displayName': ?displayName,
      'etag': ?etag,
      'gceZone': ?gceZone,
      'instanceId': instanceId,
      'instanceType': pulumi.Input.mapInputValue<InstanceInstanceTypeAlloydbV1alpha, String>(instanceType, (value) => value.wireValue),
      'labels': ?labels,
      'location': ?location,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<MachineConfigAlloydbV1alpha, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'project': ?project,
      'queryInsightsConfig': ?pulumi.Input.mapOptionalInputValue<QueryInsightsInstanceConfigAlloydbV1alpha, Map<String, dynamic>>(queryInsightsConfig, (value) => value.toMap()),
      'readPoolConfig': ?pulumi.Input.mapOptionalInputValue<ReadPoolConfigAlloydbV1alpha, Map<String, dynamic>>(readPoolConfig, (value) => value.toMap()),
      'requestId': ?requestId,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<UpdatePolicy, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
    };
  }

  factory InstanceAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAlloydbV1alphaArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAvailabilityTypeAlloydbV1alpha.fromValue(guardedValue as String)); })(),
      clientConnectionConfig: (() { final guardedValue = map['clientConnectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientConnectionConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gceZone: (() { final guardedValue = map['gceZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(InstanceInstanceTypeAlloydbV1alpha.fromValue(map['instanceType']! as String)),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineConfig: (() { final guardedValue = map['machineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MachineConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryInsightsConfig: (() { final guardedValue = map['queryInsightsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryInsightsInstanceConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readPoolConfig: (() { final guardedValue = map['readPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReadPoolConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
