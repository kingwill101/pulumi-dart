// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_node_pool_config_node_config.dart';
import 'bare_metal_node_pool_node_pool_config_taint.dart';

class BareMetalNodePoolNodePoolConfig {
  /// The map of Kubernetes labels (key/value pairs) to be applied to
  /// each node. These will added in addition to any default label(s)
  /// that Kubernetes may apply to the node. In case of conflict in
  /// label keys, the applied set may differ depending on the Kubernetes
  /// version -- it's best to assume the behavior is undefined and
  /// conflicts should be avoided. For more information, including usage
  /// and the valid values, see:
  /// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
  /// An object containing a list of "key": value pairs.
  /// For example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;
  /// The list of machine addresses in the Bare Metal Node Pool.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalNodePoolNodePoolConfigNodeConfig>> nodeConfigs;
  /// Specifies the nodes operating system (default: LINUX).
  final pulumi.Input<String>? operatingSystem;
  /// The initial taints assigned to nodes of this node pool.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalNodePoolNodePoolConfigTaint>>? taints;

  /// Creates a new [BareMetalNodePoolNodePoolConfig].
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to
  /// [nodeConfigs] The list of machine addresses in the Bare Metal Node Pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  BareMetalNodePoolNodePoolConfig({
    this.labels,
    required this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeConfigs': pulumi.Input.mapInputValue<List<BareMetalNodePoolNodePoolConfigNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<BareMetalNodePoolNodePoolConfigNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?operatingSystem,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<BareMetalNodePoolNodePoolConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<BareMetalNodePoolNodePoolConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalNodePoolNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolNodePoolConfig(
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      nodeConfigs: (pulumi.Input.decodeList<BareMetalNodePoolNodePoolConfigNodeConfig>(map['nodeConfigs'], (value) => BareMetalNodePoolNodePoolConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (map['operatingSystem'] as String).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<BareMetalNodePoolNodePoolConfigTaint>(map['taints'], (value) => BareMetalNodePoolNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

