// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_response_alloydb_v1beta.dart';
import 'machine_config_response_alloydb_v1beta.dart';
import 'node_response_alloydb_v1beta.dart';
import 'query_insights_instance_config_response_alloydb_v1beta.dart';
import 'read_pool_config_response_alloydb_v1beta.dart';
import 'update_policy_response_alloydb_v1beta.dart';

/// Result data returned by getInstance.
class GetInstanceAlloydbV1betaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String>? annotations;
  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final String? availabilityType;
  /// Optional. Client connection specific configurations
  final ClientConnectionConfigResponseAlloydbV1beta? clientConnectionConfig;
  /// Create time stamp
  final String? createTime;
  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final Map<String, String>? databaseFlags;
  /// Delete time stamp
  final String? deleteTime;
  /// User-settable and human-readable display name for the Instance.
  final String? displayName;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final String? etag;
  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final String? gceZone;
  /// The type of the instance. Specified at creation time.
  final String? instanceType;
  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  final String? ipAddress;
  /// Labels as key value pairs
  final Map<String, String>? labels;
  /// Configurations for the machines that host the underlying database engine.
  final MachineConfigResponseAlloydbV1beta? machineConfig;
  /// The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String? name;
  /// List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  final List<NodeResponseAlloydbV1beta>? nodes;
  /// Configuration for query insights.
  final QueryInsightsInstanceConfigResponseAlloydbV1beta? queryInsightsConfig;
  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final ReadPoolConfigResponseAlloydbV1beta? readPoolConfig;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool? reconciling;
  /// The current serving state of the instance.
  final String? state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String? uid;
  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  final UpdatePolicyResponseAlloydbV1beta? updatePolicy;
  /// Update time stamp
  final String? updateTime;
  /// This is set for the read-write VM of the PRIMARY instance only.
  final NodeResponseAlloydbV1beta? writableNode;

  /// Creates a new [GetInstanceAlloydbV1betaResult].
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
  /// [updatePolicy] Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  /// [updateTime] Update time stamp
  /// [writableNode] This is set for the read-write VM of the PRIMARY instance only.
  const GetInstanceAlloydbV1betaResult({
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    this.createTime,
    this.databaseFlags,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.gceZone,
    this.instanceType,
    this.ipAddress,
    this.labels,
    this.machineConfig,
    this.name,
    this.nodes,
    this.queryInsightsConfig,
    this.readPoolConfig,
    this.reconciling,
    this.state,
    this.uid,
    this.updatePolicy,
    this.updateTime,
    this.writableNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'availabilityType': ?availabilityType,
      'clientConnectionConfig': ?clientConnectionConfig?.toMap(),
      'createTime': ?createTime,
      'databaseFlags': ?databaseFlags,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'gceZone': ?gceZone,
      'instanceType': ?instanceType,
      'ipAddress': ?ipAddress,
      'labels': ?labels,
      'machineConfig': ?machineConfig?.toMap(),
      'name': ?name,
      'nodes': ?(() { final guardedValue = nodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodeResponseAlloydbV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queryInsightsConfig': ?queryInsightsConfig?.toMap(),
      'readPoolConfig': ?readPoolConfig?.toMap(),
      'reconciling': ?reconciling,
      'state': ?state,
      'uid': ?uid,
      'updatePolicy': ?updatePolicy?.toMap(),
      'updateTime': ?updateTime,
      'writableNode': ?writableNode?.toMap(),
    };
  }

  factory GetInstanceAlloydbV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAlloydbV1betaResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      availabilityType: (() { final guardedValue = map['availabilityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientConnectionConfig: (() { final guardedValue = map['clientConnectionConfig']; if (guardedValue == null) return null; return ClientConnectionConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseFlags: (() { final guardedValue = map['databaseFlags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gceZone: (() { final guardedValue = map['gceZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      machineConfig: (() { final guardedValue = map['machineConfig']; if (guardedValue == null) return null; return MachineConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeResponseAlloydbV1beta>(guardedValue, (value) => NodeResponseAlloydbV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      queryInsightsConfig: (() { final guardedValue = map['queryInsightsConfig']; if (guardedValue == null) return null; return QueryInsightsInstanceConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      readPoolConfig: (() { final guardedValue = map['readPoolConfig']; if (guardedValue == null) return null; return ReadPoolConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return UpdatePolicyResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      writableNode: (() { final guardedValue = map['writableNode']; if (guardedValue == null) return null; return NodeResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
