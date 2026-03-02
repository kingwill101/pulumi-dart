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
  BareMetalNodePoolConfig({
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
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<BareMetalNodePoolConfigOperatingSystem, String>(operatingSystem, (value) => value.value),
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodeTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolConfig(
      kubeletConfig: map['kubeletConfig'] == null ? null : (BareMetalKubeletConfig.fromMap((map['kubeletConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      nodeConfigs: (pulumi.Input.decodeList<BareMetalNodeConfig>(map['nodeConfigs'], (value) => BareMetalNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (BareMetalNodePoolConfigOperatingSystem.fromValue(map['operatingSystem']! as String)).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<NodeTaint>(map['taints']!, (value) => NodeTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

