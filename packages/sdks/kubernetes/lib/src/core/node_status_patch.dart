// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_volume_patch.dart';
import 'container_image_patch.dart';
import 'node_address_patch.dart';
import 'node_condition_patch.dart';
import 'node_config_status_patch.dart';
import 'node_daemon_endpoints_patch.dart';
import 'node_features_patch.dart';
import 'node_runtime_handler_patch.dart';
import 'node_system_info_patch.dart';

/// NodeStatus is information about the current status of a node.
class NodeStatusPatch {
  /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/reference/node/node-status/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
  final pulumi.Input<List<NodeAddressPatch>?>? addresses;
  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  final pulumi.Input<Map<String, String>?>? allocatable;
  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/reference/node/node-status/#capacity
  final pulumi.Input<Map<String, String>?>? capacity;
  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/reference/node/node-status/#condition
  final pulumi.Input<List<NodeConditionPatch>?>? conditions;
  /// Status of the config assigned to the node via the dynamic Kubelet config feature.
  final pulumi.Input<NodeConfigStatusPatch?>? config;
  /// Endpoints of daemons running on the Node.
  final pulumi.Input<NodeDaemonEndpointsPatch?>? daemonEndpoints;
  /// DeclaredFeatures represents the features related to feature gates that are declared by the node.
  final pulumi.Input<List<String>?>? declaredFeatures;
  /// Features describes the set of features implemented by the CRI implementation.
  final pulumi.Input<NodeFeaturesPatch?>? features;
  /// List of container images on this node
  final pulumi.Input<List<ContainerImagePatch>?>? images;
  /// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/reference/node/node-status/#info
  final pulumi.Input<NodeSystemInfoPatch?>? nodeInfo;
  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  final pulumi.Input<String?>? phase;
  /// The available runtime handlers.
  final pulumi.Input<List<NodeRuntimeHandlerPatch>?>? runtimeHandlers;
  /// List of volumes that are attached to the node.
  final pulumi.Input<List<AttachedVolumePatch>?>? volumesAttached;
  /// List of attachable volumes in use (mounted) by the node.
  final pulumi.Input<List<String>?>? volumesInUse;

  /// Creates a new [NodeStatusPatch].
  /// [addresses] List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/reference/node/node-status/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
  /// [allocatable] Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  /// [capacity] Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/reference/node/node-status/#capacity
  /// [conditions] Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/reference/node/node-status/#condition
  /// [config] Status of the config assigned to the node via the dynamic Kubelet config feature.
  /// [daemonEndpoints] Endpoints of daemons running on the Node.
  /// [declaredFeatures] DeclaredFeatures represents the features related to feature gates that are declared by the node.
  /// [features] Features describes the set of features implemented by the CRI implementation.
  /// [images] List of container images on this node
  /// [nodeInfo] Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/reference/node/node-status/#info
  /// [phase] NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  /// [runtimeHandlers] The available runtime handlers.
  /// [volumesAttached] List of volumes that are attached to the node.
  /// [volumesInUse] List of attachable volumes in use (mounted) by the node.
  const NodeStatusPatch({
    this.addresses,
    this.allocatable,
    this.capacity,
    this.conditions,
    this.config,
    this.daemonEndpoints,
    this.declaredFeatures,
    this.features,
    this.images,
    this.nodeInfo,
    this.phase,
    this.runtimeHandlers,
    this.volumesAttached,
    this.volumesInUse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<NodeAddressPatch>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<NodeAddressPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allocatable': ?allocatable,
      'capacity': ?capacity,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<NodeConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<NodeConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'config': ?pulumi.Input.mapOptionalInputValue<NodeConfigStatusPatch, Map<String, dynamic>>(config, (value) => value.toMap()),
      'daemonEndpoints': ?pulumi.Input.mapOptionalInputValue<NodeDaemonEndpointsPatch, Map<String, dynamic>>(daemonEndpoints, (value) => value.toMap()),
      'declaredFeatures': ?declaredFeatures,
      'features': ?pulumi.Input.mapOptionalInputValue<NodeFeaturesPatch, Map<String, dynamic>>(features, (value) => value.toMap()),
      'images': ?pulumi.Input.mapOptionalInputValue<List<ContainerImagePatch>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ContainerImagePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeInfo': ?pulumi.Input.mapOptionalInputValue<NodeSystemInfoPatch, Map<String, dynamic>>(nodeInfo, (value) => value.toMap()),
      'phase': ?phase,
      'runtimeHandlers': ?pulumi.Input.mapOptionalInputValue<List<NodeRuntimeHandlerPatch>, List<Map<String, dynamic>>>(runtimeHandlers, (value) => pulumi.Input.encodeList<NodeRuntimeHandlerPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumesAttached': ?pulumi.Input.mapOptionalInputValue<List<AttachedVolumePatch>, List<Map<String, dynamic>>>(volumesAttached, (value) => pulumi.Input.encodeList<AttachedVolumePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumesInUse': ?volumesInUse,
    };
  }

  factory NodeStatusPatch.fromMap(Map<String, dynamic> map) {
    return NodeStatusPatch(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAddressPatch>(guardedValue, (value) => NodeAddressPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allocatable: (() { final guardedValue = map['allocatable']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeConditionPatch>(guardedValue, (value) => NodeConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeConfigStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      daemonEndpoints: (() { final guardedValue = map['daemonEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeDaemonEndpointsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      declaredFeatures: (() { final guardedValue = map['declaredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeFeaturesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerImagePatch>(guardedValue, (value) => ContainerImagePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeInfo: (() { final guardedValue = map['nodeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSystemInfoPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeHandlers: (() { final guardedValue = map['runtimeHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeRuntimeHandlerPatch>(guardedValue, (value) => NodeRuntimeHandlerPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumesAttached: (() { final guardedValue = map['volumesAttached']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttachedVolumePatch>(guardedValue, (value) => AttachedVolumePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumesInUse: (() { final guardedValue = map['volumesInUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
