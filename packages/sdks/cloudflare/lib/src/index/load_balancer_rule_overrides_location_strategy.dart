// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerRuleOverridesLocationStrategy {
  /// Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
  final pulumi.Input<String?>? mode;
  /// Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
  final pulumi.Input<String?>? preferEcs;

  /// Creates a new [LoadBalancerRuleOverridesLocationStrategy].
  /// [mode] Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
  /// [preferEcs] Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
  const LoadBalancerRuleOverridesLocationStrategy({
    this.mode,
    this.preferEcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'preferEcs': ?preferEcs,
    };
  }

  factory LoadBalancerRuleOverridesLocationStrategy.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleOverridesLocationStrategy(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferEcs: (() { final guardedValue = map['preferEcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
