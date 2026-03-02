// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_volume.dart';
import 'container_image.dart';
import 'node_address.dart';
import 'node_condition.dart';
import 'node_config_status.dart';
import 'node_daemon_endpoints.dart';
import 'node_features.dart';
import 'node_runtime_handler.dart';
import 'node_system_info.dart';

/// NodeStatus is information about the current status of a node.
class NodeStatus {
  /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/reference/node/node-status/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
  final pulumi.Input<List<NodeAddress>>? addresses;
  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  final pulumi.Input<Map<String, String>>? allocatable;
  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/reference/node/node-status/#capacity
  final pulumi.Input<Map<String, String>>? capacity;
  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/reference/node/node-status/#condition
  final pulumi.Input<List<NodeCondition>>? conditions;
  /// Status of the config assigned to the node via the dynamic Kubelet config feature.
  final pulumi.Input<NodeConfigStatus>? config;
  /// Endpoints of daemons running on the Node.
  final pulumi.Input<NodeDaemonEndpoints>? daemonEndpoints;
  /// DeclaredFeatures represents the features related to feature gates that are declared by the node.
  final pulumi.Input<List<String>>? declaredFeatures;
  /// Features describes the set of features implemented by the CRI implementation.
  final pulumi.Input<NodeFeatures>? features;
  /// List of container images on this node
  final pulumi.Input<List<ContainerImage>>? images;
  /// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/reference/node/node-status/#info
  final pulumi.Input<NodeSystemInfo>? nodeInfo;
  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  final pulumi.Input<String>? phase;
  /// The available runtime handlers.
  final pulumi.Input<List<NodeRuntimeHandler>>? runtimeHandlers;
  /// List of volumes that are attached to the node.
  final pulumi.Input<List<AttachedVolume>>? volumesAttached;
  /// List of attachable volumes in use (mounted) by the node.
  final pulumi.Input<List<String>>? volumesInUse;

  /// Creates a new [NodeStatus].
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
  NodeStatus({
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
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<NodeAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<NodeAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allocatable': ?allocatable,
      'capacity': ?capacity,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<NodeCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<NodeCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'config': ?pulumi.Input.mapOptionalInputValue<NodeConfigStatus, Map<String, dynamic>>(config, (value) => value.toMap()),
      'daemonEndpoints': ?pulumi.Input.mapOptionalInputValue<NodeDaemonEndpoints, Map<String, dynamic>>(daemonEndpoints, (value) => value.toMap()),
      'declaredFeatures': ?declaredFeatures,
      'features': ?pulumi.Input.mapOptionalInputValue<NodeFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'images': ?pulumi.Input.mapOptionalInputValue<List<ContainerImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ContainerImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeInfo': ?pulumi.Input.mapOptionalInputValue<NodeSystemInfo, Map<String, dynamic>>(nodeInfo, (value) => value.toMap()),
      'phase': ?phase,
      'runtimeHandlers': ?pulumi.Input.mapOptionalInputValue<List<NodeRuntimeHandler>, List<Map<String, dynamic>>>(runtimeHandlers, (value) => pulumi.Input.encodeList<NodeRuntimeHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumesAttached': ?pulumi.Input.mapOptionalInputValue<List<AttachedVolume>, List<Map<String, dynamic>>>(volumesAttached, (value) => pulumi.Input.encodeList<AttachedVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumesInUse': ?volumesInUse,
    };
  }

  factory NodeStatus.fromMap(Map<String, dynamic> map) {
    return NodeStatus(
      addresses: map['addresses'] == null ? null : (pulumi.Input.decodeList<NodeAddress>(map['addresses']!, (value) => NodeAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      allocatable: map['allocatable'] == null ? null : ((map['allocatable']! as Map).cast<String, String>()).input(),
      capacity: map['capacity'] == null ? null : ((map['capacity']! as Map).cast<String, String>()).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<NodeCondition>(map['conditions']!, (value) => NodeCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      config: map['config'] == null ? null : (NodeConfigStatus.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      daemonEndpoints: map['daemonEndpoints'] == null ? null : (NodeDaemonEndpoints.fromMap((map['daemonEndpoints']! as Map).cast<String, dynamic>())).input(),
      declaredFeatures: map['declaredFeatures'] == null ? null : ((map['declaredFeatures']! as List).cast<String>()).input(),
      features: map['features'] == null ? null : (NodeFeatures.fromMap((map['features']! as Map).cast<String, dynamic>())).input(),
      images: map['images'] == null ? null : (pulumi.Input.decodeList<ContainerImage>(map['images']!, (value) => ContainerImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeInfo: map['nodeInfo'] == null ? null : (NodeSystemInfo.fromMap((map['nodeInfo']! as Map).cast<String, dynamic>())).input(),
      phase: map['phase'] == null ? null : (map['phase']! as String).input(),
      runtimeHandlers: map['runtimeHandlers'] == null ? null : (pulumi.Input.decodeList<NodeRuntimeHandler>(map['runtimeHandlers']!, (value) => NodeRuntimeHandler.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumesAttached: map['volumesAttached'] == null ? null : (pulumi.Input.decodeList<AttachedVolume>(map['volumesAttached']!, (value) => AttachedVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumesInUse: map['volumesInUse'] == null ? null : ((map['volumesInUse']! as List).cast<String>()).input(),
    );
  }
}

