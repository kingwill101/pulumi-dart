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
  });

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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      availabilityType: map['availabilityType'] == null ? null : (InstanceAvailabilityType.fromValue(map['availabilityType']! as String)).input(),
      clientConnectionConfig: map['clientConnectionConfig'] == null ? null : (ClientConnectionConfig.fromMap((map['clientConnectionConfig']! as Map).cast<String, dynamic>())).input(),
      clusterId: (map['clusterId'] as String).input(),
      databaseFlags: map['databaseFlags'] == null ? null : ((map['databaseFlags']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      gceZone: map['gceZone'] == null ? null : (map['gceZone']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: (InstanceInstanceType.fromValue(map['instanceType'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineConfig: map['machineConfig'] == null ? null : (MachineConfig.fromMap((map['machineConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      queryInsightsConfig: map['queryInsightsConfig'] == null ? null : (QueryInsightsInstanceConfig.fromMap((map['queryInsightsConfig']! as Map).cast<String, dynamic>())).input(),
      readPoolConfig: map['readPoolConfig'] == null ? null : (ReadPoolConfig.fromMap((map['readPoolConfig']! as Map).cast<String, dynamic>())).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
    );
  }
}

