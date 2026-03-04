// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_kubelet_config.dart';
import 'bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_node_config.dart';
import 'bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config_taint.dart';

class BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig {
  /// The modifiable kubelet configurations for the baremetal machines.
  /// Structure is documented below.
  final pulumi.Input<
    BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig
  >?
  kubeletConfig;

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
  final pulumi.Input<
    List<
      BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig
    >
  >?
  nodeConfigs;

  /// Specifies the nodes operating system (default: LINUX).
  final pulumi.Input<String>? operatingSystem;

  /// The initial taints assigned to nodes of this node pool.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint
    >
  >?
  taints;

  /// Creates a new [BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig].
  /// [kubeletConfig] The modifiable kubelet configurations for the baremetal machines.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to
  /// [nodeConfigs] The list of machine addresses in the Bare Metal Node Pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig({
    this.kubeletConfig,
    this.labels,
    this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig,
            Map<String, dynamic>
          >(kubeletConfig, (value) => value.toMap()),
      'labels': ?labels,
      'nodeConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig
            >,
            List<Map<String, dynamic>>
          >(
            nodeConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'operatingSystem': ?operatingSystem,
      'taints':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint
            >,
            List<Map<String, dynamic>>
          >(
            taints,
            (value) =>
                pulumi.Input.encodeList<
                  BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig(
      kubeletConfig: (() {
        final guardedValue = map['kubeletConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      nodeConfigs: (() {
        final guardedValue = map['nodeConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig
          >(
            guardedValue,
            (value) =>
                BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      operatingSystem: (() {
        final guardedValue = map['operatingSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      taints: (() {
        final guardedValue = map['taints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint
          >(
            guardedValue,
            (value) =>
                BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
