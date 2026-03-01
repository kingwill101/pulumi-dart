// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_alloydb_v1beta.dart';
import 'instance_availability_type_alloydb_v1beta.dart';
import 'instance_instance_type_alloydb_v1beta.dart';
import 'machine_config_alloydb_v1beta.dart';
import 'query_insights_instance_config_alloydb_v1beta.dart';
import 'read_pool_config_alloydb_v1beta.dart';
import 'update_policy_alloydb_v1beta.dart';

/// {@template pulumi_alloydb_v1beta_instance_alloydb_v1beta_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1beta_instance_alloydb_v1beta_args_doc}
class InstanceAlloydbV1betaArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final pulumi.Input<InstanceAvailabilityTypeAlloydbV1beta>? availabilityType;
  /// Optional. Client connection specific configurations
  final pulumi.Input<ClientConnectionConfigAlloydbV1beta>? clientConnectionConfig;
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
  final pulumi.Input<InstanceInstanceTypeAlloydbV1beta> instanceType;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Configurations for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfigAlloydbV1beta>? machineConfig;
  final pulumi.Input<String>? project;
  /// Configuration for query insights.
  final pulumi.Input<QueryInsightsInstanceConfigAlloydbV1beta>? queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final pulumi.Input<ReadPoolConfigAlloydbV1beta>? readPoolConfig;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  final pulumi.Input<UpdatePolicyAlloydbV1beta>? updatePolicy;

  /// Creates a new [InstanceAlloydbV1betaArgs].
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
  InstanceAlloydbV1betaArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<InstanceAvailabilityTypeAlloydbV1beta>? availabilityType,
    pulumi.Output<ClientConnectionConfigAlloydbV1beta>? clientConnectionConfig,
    required pulumi.Output<String> clusterId,
    pulumi.Output<Map<String, String>>? databaseFlags,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? gceZone,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<InstanceInstanceTypeAlloydbV1beta> instanceType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MachineConfigAlloydbV1beta>? machineConfig,
    pulumi.Output<String>? project,
    pulumi.Output<QueryInsightsInstanceConfigAlloydbV1beta>? queryInsightsConfig,
    pulumi.Output<ReadPoolConfigAlloydbV1beta>? readPoolConfig,
    pulumi.Output<String>? requestId,
    pulumi.Output<UpdatePolicyAlloydbV1beta>? updatePolicy,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      availabilityType = pulumi.Input.asOptionalInput<InstanceAvailabilityTypeAlloydbV1beta>(availabilityType),
      clientConnectionConfig = pulumi.Input.asOptionalInput<ClientConnectionConfigAlloydbV1beta>(clientConnectionConfig),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      databaseFlags = pulumi.Input.asOptionalInput<Map<String, String>>(databaseFlags),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      gceZone = pulumi.Input.asOptionalInput<String>(gceZone),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asInput<InstanceInstanceTypeAlloydbV1beta>(instanceType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineConfig = pulumi.Input.asOptionalInput<MachineConfigAlloydbV1beta>(machineConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      queryInsightsConfig = pulumi.Input.asOptionalInput<QueryInsightsInstanceConfigAlloydbV1beta>(queryInsightsConfig),
      readPoolConfig = pulumi.Input.asOptionalInput<ReadPoolConfigAlloydbV1beta>(readPoolConfig),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      updatePolicy = pulumi.Input.asOptionalInput<UpdatePolicyAlloydbV1beta>(updatePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<InstanceAvailabilityTypeAlloydbV1beta, String>(availabilityType, (value) => value.value),
      'clientConnectionConfig': ?pulumi.Input.mapOptionalInputValue<ClientConnectionConfigAlloydbV1beta, Map<String, dynamic>>(clientConnectionConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'databaseFlags': ?databaseFlags,
      'displayName': ?displayName,
      'etag': ?etag,
      'gceZone': ?gceZone,
      'instanceId': instanceId,
      'instanceType': pulumi.Input.mapInputValue<InstanceInstanceTypeAlloydbV1beta, String>(instanceType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<MachineConfigAlloydbV1beta, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'project': ?project,
      'queryInsightsConfig': ?pulumi.Input.mapOptionalInputValue<QueryInsightsInstanceConfigAlloydbV1beta, Map<String, dynamic>>(queryInsightsConfig, (value) => value.toMap()),
      'readPoolConfig': ?pulumi.Input.mapOptionalInputValue<ReadPoolConfigAlloydbV1beta, Map<String, dynamic>>(readPoolConfig, (value) => value.toMap()),
      'requestId': ?requestId,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<UpdatePolicyAlloydbV1beta, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
    };
  }

  factory InstanceAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAlloydbV1betaArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      availabilityType: map['availabilityType'] == null ? null : pulumi.Output.create<InstanceAvailabilityTypeAlloydbV1beta>(InstanceAvailabilityTypeAlloydbV1beta.fromValue(map['availabilityType'] as String)),
      clientConnectionConfig: map['clientConnectionConfig'] == null ? null : pulumi.Output.create<ClientConnectionConfigAlloydbV1beta>(ClientConnectionConfigAlloydbV1beta.fromMap((map['clientConnectionConfig'] as Map).cast<String, dynamic>())),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      databaseFlags: map['databaseFlags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['databaseFlags'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      gceZone: map['gceZone'] == null ? null : pulumi.Output.create<String>(map['gceZone'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: pulumi.Output.create<InstanceInstanceTypeAlloydbV1beta>(InstanceInstanceTypeAlloydbV1beta.fromValue(map['instanceType'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineConfig: map['machineConfig'] == null ? null : pulumi.Output.create<MachineConfigAlloydbV1beta>(MachineConfigAlloydbV1beta.fromMap((map['machineConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queryInsightsConfig: map['queryInsightsConfig'] == null ? null : pulumi.Output.create<QueryInsightsInstanceConfigAlloydbV1beta>(QueryInsightsInstanceConfigAlloydbV1beta.fromMap((map['queryInsightsConfig'] as Map).cast<String, dynamic>())),
      readPoolConfig: map['readPoolConfig'] == null ? null : pulumi.Output.create<ReadPoolConfigAlloydbV1beta>(ReadPoolConfigAlloydbV1beta.fromMap((map['readPoolConfig'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      updatePolicy: map['updatePolicy'] == null ? null : pulumi.Output.create<UpdatePolicyAlloydbV1beta>(UpdatePolicyAlloydbV1beta.fromMap((map['updatePolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

