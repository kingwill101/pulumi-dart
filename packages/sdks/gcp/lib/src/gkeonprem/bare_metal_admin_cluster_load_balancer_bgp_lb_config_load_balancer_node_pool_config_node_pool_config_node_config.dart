// ignore_for_file: unused_element, unnecessary_cast


class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig {
  /// The labels assigned to nodes of this node pool.
  /// An object containing a list of key/value pairs.
  /// Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// (Optional)
  final String? nodeIp;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig].
  /// [labels] The labels assigned to nodes of this node pool.
  /// [nodeIp] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig({
    this.labels,
    this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeIp': ?nodeIp,
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfig(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodeIp: map['nodeIp'] == null ? null : map['nodeIp'] as String,
    );
  }
}

