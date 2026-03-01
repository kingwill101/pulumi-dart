// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_config_source_patch.dart';
import 'taint_patch.dart';

/// NodeSpec describes the attributes that a node is created with.
class NodeSpecPatch {
  /// Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
  final NodeConfigSourcePatch? configSource;
  /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  final String? externalID;
  /// PodCIDR represents the pod IP range assigned to the node.
  final String? podCIDR;
  /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  final List<String>? podCIDRs;
  /// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
  final String? providerID;
  /// If specified, the node's taints.
  final List<TaintPatch>? taints;
  /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  final bool? unschedulable;

  /// Creates a new [NodeSpecPatch].
  /// [configSource] Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
  /// [externalID] Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  /// [podCIDR] PodCIDR represents the pod IP range assigned to the node.
  /// [podCIDRs] podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  /// [providerID] ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
  /// [taints] If specified, the node's taints.
  /// [unschedulable] Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  NodeSpecPatch({
    this.configSource,
    this.externalID,
    this.podCIDR,
    this.podCIDRs,
    this.providerID,
    this.taints,
    this.unschedulable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': ?configSource == null ? null : configSource!.toMap(),
      'externalID': ?externalID,
      'podCIDR': ?podCIDR,
      'podCIDRs': ?podCIDRs,
      'providerID': ?providerID,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<TaintPatch, Map<String, dynamic>>(taints!, (value) => value.toMap()),
      'unschedulable': ?unschedulable,
    };
  }

  factory NodeSpecPatch.fromMap(Map<String, dynamic> map) {
    return NodeSpecPatch(
      configSource: map['configSource'] == null ? null : NodeConfigSourcePatch.fromMap((map['configSource'] as Map).cast<String, dynamic>()),
      externalID: map['externalID'] == null ? null : map['externalID'] as String,
      podCIDR: map['podCIDR'] == null ? null : map['podCIDR'] as String,
      podCIDRs: map['podCIDRs'] == null ? null : (map['podCIDRs'] as List).cast<String>(),
      providerID: map['providerID'] == null ? null : map['providerID'] as String,
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<TaintPatch>(map['taints'], (value) => TaintPatch.fromMap((value as Map).cast<String, dynamic>())),
      unschedulable: map['unschedulable'] == null ? null : map['unschedulable'] as bool,
    );
  }
}

