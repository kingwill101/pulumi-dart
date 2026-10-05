// ignore_for_file: unused_element, unnecessary_cast

import 'resource_status_response.dart';
import 'vmware_node_config_response.dart';
import 'vmware_node_pool_autoscaling_config_response.dart';

/// Result data returned by getVmwareNodePool.
class GetVmwareNodePoolResult {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String>? annotations;
  /// The node configuration of the node pool.
  final VmwareNodeConfigResponse? config;
  /// The time at which this node pool was created.
  final String? createTime;
  /// The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  final String? deleteTime;
  /// The display name for the node pool.
  final String? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String? etag;
  /// Immutable. The resource name of this node pool.
  final String? name;
  /// Node pool autoscaling config for the node pool.
  final VmwareNodePoolAutoscalingConfigResponse? nodePoolAutoscaling;
  /// Anthos version for the node pool. Defaults to the user cluster version.
  final String? onPremVersion;
  /// If set, there are currently changes in flight to the node pool.
  final bool? reconciling;
  /// The current state of the node pool.
  final String? state;
  /// ResourceStatus representing the detailed VMware node pool state.
  final ResourceStatusResponse? status;
  /// The unique identifier of the node pool.
  final String? uid;
  /// The time at which this node pool was last updated.
  final String? updateTime;

  /// Creates a new [GetVmwareNodePoolResult].
  /// [annotations] Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [config] The node configuration of the node pool.
  /// [createTime] The time at which this node pool was created.
  /// [deleteTime] The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  /// [displayName] The display name for the node pool.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [name] Immutable. The resource name of this node pool.
  /// [nodePoolAutoscaling] Node pool autoscaling config for the node pool.
  /// [onPremVersion] Anthos version for the node pool. Defaults to the user cluster version.
  /// [reconciling] If set, there are currently changes in flight to the node pool.
  /// [state] The current state of the node pool.
  /// [status] ResourceStatus representing the detailed VMware node pool state.
  /// [uid] The unique identifier of the node pool.
  /// [updateTime] The time at which this node pool was last updated.
  const GetVmwareNodePoolResult({
    this.annotations,
    this.config,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.reconciling,
    this.state,
    this.status,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'config': ?config?.toMap(),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'nodePoolAutoscaling': ?nodePoolAutoscaling?.toMap(),
      'onPremVersion': ?onPremVersion,
      'reconciling': ?reconciling,
      'state': ?state,
      'status': ?status?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetVmwareNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetVmwareNodePoolResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return VmwareNodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodePoolAutoscaling: (() { final guardedValue = map['nodePoolAutoscaling']; if (guardedValue == null) return null; return VmwareNodePoolAutoscalingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      onPremVersion: (() { final guardedValue = map['onPremVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
