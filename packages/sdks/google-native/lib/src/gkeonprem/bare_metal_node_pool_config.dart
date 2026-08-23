// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_kubelet_config.dart';
import 'bare_metal_node_config.dart';
import 'bare_metal_node_pool_config_operating_system.dart';
import 'node_taint.dart';

/// BareMetalNodePoolConfig describes the configuration of all nodes within a given bare metal node pool.
class BareMetalNodePoolConfig {
  /// The modifiable kubelet configurations for the bare metal machines.
  final pulumi.Input<BareMetalKubeletConfig>? kubeletConfig;
  /// The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;
  /// The list of machine addresses in the bare metal node pool.
  final pulumi.Input<List<BareMetalNodeConfig>> nodeConfigs;
  /// Specifies the nodes operating system (default: LINUX).
  final pulumi.Input<BareMetalNodePoolConfigOperatingSystem>? operatingSystem;
  /// The initial taints assigned to nodes of this node pool.
  final pulumi.Input<List<NodeTaint>>? taints;

  /// Creates a new [BareMetalNodePoolConfig].
  /// [kubeletConfig] The modifiable kubelet configurations for the bare metal machines.
  /// [labels] The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeConfigs] The list of machine addresses in the bare metal node pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  const BareMetalNodePoolConfig({
    this.kubeletConfig,
    this.labels,
    required this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'labels': ?labels,
      'nodeConfigs': pulumi.Input.mapInputValue<List<BareMetalNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<BareMetalNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<BareMetalNodePoolConfigOperatingSystem, String>(operatingSystem, (value) => value.wireValue),
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolConfig(
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalNodeConfig>(map['nodeConfigs']!, (value) => BareMetalNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalNodePoolConfigOperatingSystem.fromValue(guardedValue as String)); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeTaint>(guardedValue, (value) => NodeTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
