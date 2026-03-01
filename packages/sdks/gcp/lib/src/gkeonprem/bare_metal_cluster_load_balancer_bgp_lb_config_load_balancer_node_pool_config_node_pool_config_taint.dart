// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint {
  /// Specifies the nodes operating system (default: LINUX).
  /// Possible values are: `EFFECT_UNSPECIFIED`, `PREFER_NO_SCHEDULE`, `NO_EXECUTE`.
  final String? effect;
  /// Key associated with the effect.
  final String? key;
  /// Value associated with the effect.
  final String? value;

  /// Creates a new [BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint].
  /// [effect] Specifies the nodes operating system (default: LINUX).
  /// [key] Key associated with the effect.
  /// [value] Value associated with the effect.
  BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

