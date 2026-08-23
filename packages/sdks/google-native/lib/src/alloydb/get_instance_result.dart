// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_response.dart';
import 'machine_config_response.dart';
import 'node_response.dart';
import 'query_insights_instance_config_response.dart';
import 'read_pool_config_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String> annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final String availabilityType;
  /// Optional. Client connection specific configurations
  final ClientConnectionConfigResponse clientConnectionConfig;
  /// Create time stamp
  final String createTime;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final Map<String, String> databaseFlags;
  /// Delete time stamp
  final String deleteTime;
  /// User-settable and human-readable display name for the Instance.
  final String displayName;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final String etag;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final String gceZone;
  /// The type of the instance. Specified at creation time.
  final String instanceType;
  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  final String ipAddress;
  /// Labels as key value pairs
  final Map<String, String> labels;
  /// Configurations for the machines that host the underlying database engine.
  final MachineConfigResponse machineConfig;
  /// The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String name;
  /// List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  final List<NodeResponse> nodes;
  /// Configuration for query insights.
  final QueryInsightsInstanceConfigResponse queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final ReadPoolConfigResponse readPoolConfig;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool reconciling;
  /// The current serving state of the instance.
  final String state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String uid;
  /// Update time stamp
  final String updateTime;
  /// This is set for the read-write VM of the PRIMARY instance only.
  final NodeResponse writableNode;

  /// Creates a new [GetInstanceResult].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [availabilityType] Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  /// [clientConnectionConfig] Optional. Client connection specific configurations
  /// [createTime] Create time stamp
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  /// [deleteTime] Delete time stamp
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceType] The type of the instance. Specified at creation time.
  /// [ipAddress] The IP address for the Instance. This is the connection endpoint for an end-user application.
  /// [labels] Labels as key value pairs
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [name] The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  /// [nodes] List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  /// [queryInsightsConfig] Configuration for query insights.
  /// [readPoolConfig] Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [state] The current serving state of the instance.
  /// [uid] The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updateTime] Update time stamp
  /// [writableNode] This is set for the read-write VM of the PRIMARY instance only.
  const GetInstanceResult({
    required this.annotations,
    required this.availabilityType,
    required this.clientConnectionConfig,
    required this.createTime,
    required this.databaseFlags,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.gceZone,
    required this.instanceType,
    required this.ipAddress,
    required this.labels,
    required this.machineConfig,
    required this.name,
    required this.nodes,
    required this.queryInsightsConfig,
    required this.readPoolConfig,
    required this.reconciling,
    required this.state,
    required this.uid,
    required this.updateTime,
    required this.writableNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'availabilityType': availabilityType,
      'clientConnectionConfig': clientConnectionConfig.toMap(),
      'createTime': createTime,
      'databaseFlags': databaseFlags,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'gceZone': gceZone,
      'instanceType': instanceType,
      'ipAddress': ipAddress,
      'labels': labels,
      'machineConfig': machineConfig.toMap(),
      'name': name,
      'nodes': pulumi.Input.encodeList<NodeResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'queryInsightsConfig': queryInsightsConfig.toMap(),
      'readPoolConfig': readPoolConfig.toMap(),
      'reconciling': reconciling,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
      'writableNode': writableNode.toMap(),
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      availabilityType: map['availabilityType'] as String,
      clientConnectionConfig: ClientConnectionConfigResponse.fromMap((map['clientConnectionConfig']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      databaseFlags: (map['databaseFlags'] as Map).cast<String, String>(),
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      gceZone: map['gceZone'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineConfig: MachineConfigResponse.fromMap((map['machineConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<NodeResponse>(map['nodes']!, (value) => NodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      queryInsightsConfig: QueryInsightsInstanceConfigResponse.fromMap((map['queryInsightsConfig']! as Map).cast<String, dynamic>()),
      readPoolConfig: ReadPoolConfigResponse.fromMap((map['readPoolConfig']! as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      writableNode: NodeResponse.fromMap((map['writableNode']! as Map).cast<String, dynamic>()),
    );
  }
}
