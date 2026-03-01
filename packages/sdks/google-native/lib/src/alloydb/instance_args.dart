// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config.dart';
import 'instance_availability_type.dart';
import 'instance_instance_type.dart';
import 'machine_config.dart';
import 'query_insights_instance_config.dart';
import 'read_pool_config.dart';

/// {@template pulumi_alloydb_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_instance_args_doc}
class InstanceArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final pulumi.Input<InstanceAvailabilityType>? availabilityType;
  /// Optional. Client connection specific configurations
  final pulumi.Input<ClientConnectionConfig>? clientConnectionConfig;
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
  final pulumi.Input<InstanceInstanceType> instanceType;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Configurations for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfig>? machineConfig;
  final pulumi.Input<String>? project;
  /// Configuration for query insights.
  final pulumi.Input<QueryInsightsInstanceConfig>? queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final pulumi.Input<ReadPoolConfig>? readPoolConfig;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [InstanceArgs].
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
  InstanceArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<InstanceAvailabilityType>? availabilityType,
    pulumi.Output<ClientConnectionConfig>? clientConnectionConfig,
    required pulumi.Output<String> clusterId,
    pulumi.Output<Map<String, String>>? databaseFlags,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? gceZone,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<InstanceInstanceType> instanceType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MachineConfig>? machineConfig,
    pulumi.Output<String>? project,
    pulumi.Output<QueryInsightsInstanceConfig>? queryInsightsConfig,
    pulumi.Output<ReadPoolConfig>? readPoolConfig,
    pulumi.Output<String>? requestId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      availabilityType = pulumi.Input.asOptionalInput<InstanceAvailabilityType>(availabilityType),
      clientConnectionConfig = pulumi.Input.asOptionalInput<ClientConnectionConfig>(clientConnectionConfig),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      databaseFlags = pulumi.Input.asOptionalInput<Map<String, String>>(databaseFlags),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      gceZone = pulumi.Input.asOptionalInput<String>(gceZone),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asInput<InstanceInstanceType>(instanceType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineConfig = pulumi.Input.asOptionalInput<MachineConfig>(machineConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      queryInsightsConfig = pulumi.Input.asOptionalInput<QueryInsightsInstanceConfig>(queryInsightsConfig),
      readPoolConfig = pulumi.Input.asOptionalInput<ReadPoolConfig>(readPoolConfig),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'availabilityType': ?pulumi.Input.mapOptionalInputValue<InstanceAvailabilityType, String>(availabilityType, (value) => value.value),
      'clientConnectionConfig': ?pulumi.Input.mapOptionalInputValue<ClientConnectionConfig, Map<String, dynamic>>(clientConnectionConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'databaseFlags': ?databaseFlags,
      'displayName': ?displayName,
      'etag': ?etag,
      'gceZone': ?gceZone,
      'instanceId': instanceId,
      'instanceType': pulumi.Input.mapInputValue<InstanceInstanceType, String>(instanceType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<MachineConfig, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'project': ?project,
      'queryInsightsConfig': ?pulumi.Input.mapOptionalInputValue<QueryInsightsInstanceConfig, Map<String, dynamic>>(queryInsightsConfig, (value) => value.toMap()),
      'readPoolConfig': ?pulumi.Input.mapOptionalInputValue<ReadPoolConfig, Map<String, dynamic>>(readPoolConfig, (value) => value.toMap()),
      'requestId': ?requestId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      availabilityType: map['availabilityType'] == null ? null : pulumi.Output.create<InstanceAvailabilityType>(InstanceAvailabilityType.fromValue(map['availabilityType'] as String)),
      clientConnectionConfig: map['clientConnectionConfig'] == null ? null : pulumi.Output.create<ClientConnectionConfig>(ClientConnectionConfig.fromMap((map['clientConnectionConfig'] as Map).cast<String, dynamic>())),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      databaseFlags: map['databaseFlags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['databaseFlags'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      gceZone: map['gceZone'] == null ? null : pulumi.Output.create<String>(map['gceZone'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: pulumi.Output.create<InstanceInstanceType>(InstanceInstanceType.fromValue(map['instanceType'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineConfig: map['machineConfig'] == null ? null : pulumi.Output.create<MachineConfig>(MachineConfig.fromMap((map['machineConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queryInsightsConfig: map['queryInsightsConfig'] == null ? null : pulumi.Output.create<QueryInsightsInstanceConfig>(QueryInsightsInstanceConfig.fromMap((map['queryInsightsConfig'] as Map).cast<String, dynamic>())),
      readPoolConfig: map['readPoolConfig'] == null ? null : pulumi.Output.create<ReadPoolConfig>(ReadPoolConfig.fromMap((map['readPoolConfig'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

