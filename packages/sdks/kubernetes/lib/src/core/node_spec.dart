// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_config_source.dart';
import 'taint.dart';

/// NodeSpec describes the attributes that a node is created with.
class NodeSpec {
  /// Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
  final pulumi.Input<NodeConfigSource>? configSource;
  /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  final pulumi.Input<String>? externalID;
  /// PodCIDR represents the pod IP range assigned to the node.
  final pulumi.Input<String>? podCIDR;
  /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  final pulumi.Input<List<String>>? podCIDRs;
  /// ID of the node assigned by the cloud provider in the format: &lt;ProviderName&gt;://&lt;ProviderSpecificNodeID&gt;
  final pulumi.Input<String>? providerID;
  /// If specified, the node's taints.
  final pulumi.Input<List<Taint>>? taints;
  /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  final pulumi.Input<bool>? unschedulable;

  /// Creates a new [NodeSpec].
  /// [configSource] Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed.
  /// [externalID] Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  /// [podCIDR] PodCIDR represents the pod IP range assigned to the node.
  /// [podCIDRs] podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  /// [providerID] ID of the node assigned by the cloud provider in the format: &lt;ProviderName&gt;://&lt;ProviderSpecificNodeID&gt;
  /// [taints] If specified, the node's taints.
  /// [unschedulable] Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  const NodeSpec({
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
      'configSource': ?pulumi.Input.mapOptionalInputValue<NodeConfigSource, Map<String, dynamic>>(configSource, (value) => value.toMap()),
      'externalID': ?externalID,
      'podCIDR': ?podCIDR,
      'podCIDRs': ?podCIDRs,
      'providerID': ?providerID,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<Taint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<Taint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unschedulable': ?unschedulable,
    };
  }

  factory NodeSpec.fromMap(Map<String, dynamic> map) {
    return NodeSpec(
      configSource: (() { final guardedValue = map['configSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeConfigSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      externalID: (() { final guardedValue = map['externalID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podCIDR: (() { final guardedValue = map['podCIDR']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podCIDRs: (() { final guardedValue = map['podCIDRs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      providerID: (() { final guardedValue = map['providerID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Taint>(guardedValue, (value) => Taint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      unschedulable: (() { final guardedValue = map['unschedulable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

