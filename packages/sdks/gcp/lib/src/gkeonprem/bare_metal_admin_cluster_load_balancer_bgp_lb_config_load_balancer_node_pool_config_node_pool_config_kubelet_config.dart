// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig {
  /// (Optional)
  final pulumi.Input<int?>? registryBurst;
  /// (Optional)
  final pulumi.Input<int?>? registryPullQps;
  /// (Optional)
  final pulumi.Input<bool?>? serializeImagePullsDisabled;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig].
  /// [registryBurst] (Optional)
  /// [registryPullQps] (Optional)
  /// [serializeImagePullsDisabled] (Optional)
  const BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig({
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
      registryBurst: (() { final guardedValue = map['registryBurst']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      registryPullQps: (() { final guardedValue = map['registryPullQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serializeImagePullsDisabled: (() { final guardedValue = map['serializeImagePullsDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
