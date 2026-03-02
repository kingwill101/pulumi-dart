// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig {
  /// (Optional)
  final pulumi.Input<int>? registryBurst;
  /// (Optional)
  final pulumi.Input<int>? registryPullQps;
  /// (Optional)
  final pulumi.Input<bool>? serializeImagePullsDisabled;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig].
  /// [registryBurst] (Optional)
  /// [registryPullQps] (Optional)
  /// [serializeImagePullsDisabled] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryBurst': ?registryBurst,
      'registryPullQps': ?registryPullQps,
      'serializeImagePullsDisabled': ?serializeImagePullsDisabled,
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig(
      registryBurst: map['registryBurst'] == null ? null : (map['registryBurst'] as int).input(),
      registryPullQps: map['registryPullQps'] == null ? null : (map['registryPullQps'] as int).input(),
      serializeImagePullsDisabled: map['serializeImagePullsDisabled'] == null ? null : (map['serializeImagePullsDisabled'] as bool).input(),
    );
  }
}

