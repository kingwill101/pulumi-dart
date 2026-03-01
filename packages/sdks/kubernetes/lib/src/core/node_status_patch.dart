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
  final List<NodeAddressPatch>? addresses;
  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  final Map<String, String>? allocatable;
  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/reference/node/node-status/#capacity
  final Map<String, String>? capacity;
  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/reference/node/node-status/#condition
  final List<NodeConditionPatch>? conditions;
  /// Status of the config assigned to the node via the dynamic Kubelet config feature.
  final NodeConfigStatusPatch? config;
  /// Endpoints of daemons running on the Node.
  final NodeDaemonEndpointsPatch? daemonEndpoints;
  /// DeclaredFeatures represents the features related to feature gates that are declared by the node.
  final List<String>? declaredFeatures;
  /// Features describes the set of features implemented by the CRI implementation.
  final NodeFeaturesPatch? features;
  /// List of container images on this node
  final List<ContainerImagePatch>? images;
  /// Set of ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/reference/node/node-status/#info
  final NodeSystemInfoPatch? nodeInfo;
  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  final String? phase;
  /// The available runtime handlers.
  final List<NodeRuntimeHandlerPatch>? runtimeHandlers;
  /// List of volumes that are attached to the node.
  final List<AttachedVolumePatch>? volumesAttached;
  /// List of attachable volumes in use (mounted) by the node.
  final List<String>? volumesInUse;

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
  NodeStatusPatch({
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
      'addresses': ?addresses == null ? null : pulumi.Input.encodeList<NodeAddressPatch, Map<String, dynamic>>(addresses!, (value) => value.toMap()),
      'allocatable': ?allocatable,
      'capacity': ?capacity,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<NodeConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'config': ?config == null ? null : config!.toMap(),
      'daemonEndpoints': ?daemonEndpoints == null ? null : daemonEndpoints!.toMap(),
      'declaredFeatures': ?declaredFeatures,
      'features': ?features == null ? null : features!.toMap(),
      'images': ?images == null ? null : pulumi.Input.encodeList<ContainerImagePatch, Map<String, dynamic>>(images!, (value) => value.toMap()),
      'nodeInfo': ?nodeInfo == null ? null : nodeInfo!.toMap(),
      'phase': ?phase,
      'runtimeHandlers': ?runtimeHandlers == null ? null : pulumi.Input.encodeList<NodeRuntimeHandlerPatch, Map<String, dynamic>>(runtimeHandlers!, (value) => value.toMap()),
      'volumesAttached': ?volumesAttached == null ? null : pulumi.Input.encodeList<AttachedVolumePatch, Map<String, dynamic>>(volumesAttached!, (value) => value.toMap()),
      'volumesInUse': ?volumesInUse,
    };
  }

  factory NodeStatusPatch.fromMap(Map<String, dynamic> map) {
    return NodeStatusPatch(
      addresses: map['addresses'] == null ? null : pulumi.Input.decodeList<NodeAddressPatch>(map['addresses'], (value) => NodeAddressPatch.fromMap((value as Map).cast<String, dynamic>())),
      allocatable: map['allocatable'] == null ? null : (map['allocatable'] as Map).cast<String, String>(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as Map).cast<String, String>(),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<NodeConditionPatch>(map['conditions'], (value) => NodeConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      config: map['config'] == null ? null : NodeConfigStatusPatch.fromMap((map['config'] as Map).cast<String, dynamic>()),
      daemonEndpoints: map['daemonEndpoints'] == null ? null : NodeDaemonEndpointsPatch.fromMap((map['daemonEndpoints'] as Map).cast<String, dynamic>()),
      declaredFeatures: map['declaredFeatures'] == null ? null : (map['declaredFeatures'] as List).cast<String>(),
      features: map['features'] == null ? null : NodeFeaturesPatch.fromMap((map['features'] as Map).cast<String, dynamic>()),
      images: map['images'] == null ? null : pulumi.Input.decodeList<ContainerImagePatch>(map['images'], (value) => ContainerImagePatch.fromMap((value as Map).cast<String, dynamic>())),
      nodeInfo: map['nodeInfo'] == null ? null : NodeSystemInfoPatch.fromMap((map['nodeInfo'] as Map).cast<String, dynamic>()),
      phase: map['phase'] == null ? null : map['phase'] as String,
      runtimeHandlers: map['runtimeHandlers'] == null ? null : pulumi.Input.decodeList<NodeRuntimeHandlerPatch>(map['runtimeHandlers'], (value) => NodeRuntimeHandlerPatch.fromMap((value as Map).cast<String, dynamic>())),
      volumesAttached: map['volumesAttached'] == null ? null : pulumi.Input.decodeList<AttachedVolumePatch>(map['volumesAttached'], (value) => AttachedVolumePatch.fromMap((value as Map).cast<String, dynamic>())),
      volumesInUse: map['volumesInUse'] == null ? null : (map['volumesInUse'] as List).cast<String>(),
    );
  }
}

