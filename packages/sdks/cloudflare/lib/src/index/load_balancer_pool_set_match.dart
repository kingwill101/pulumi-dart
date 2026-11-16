// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_pool_set_match_topology.dart';

class LoadBalancerPoolSetMatch {
  /// When true, matches every request. Cannot be combined with `topology`.
  final pulumi.Input<bool?>? default_;
  /// Matches requests by location. Set any combination of `pops`, `countries`, and `regions` (at least one is required); a request matches when its value appears in any populated list (e.g. `regions: ["WNAM"]` with `countries: ["US"]` matches a request in either WNAM or the US).
  final pulumi.Input<LoadBalancerPoolSetMatchTopology?>? topology;

  /// Creates a new [LoadBalancerPoolSetMatch].
  /// [default_] When true, matches every request. Cannot be combined with `topology`.
  /// [topology] Matches requests by location. Set any combination of `pops`, `countries`, and `regions` (at least one is required); a request matches when its value appears in any populated list (e.g. `regions: ["WNAM"]` with `countries: ["US"]` matches a request in either WNAM or the US).
  const LoadBalancerPoolSetMatch({
    this.default_,
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'topology': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolSetMatchTopology, Map<String, dynamic>>(topology, (value) => value.toMap()),
    };
  }

  factory LoadBalancerPoolSetMatch.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolSetMatch(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolSetMatchTopology.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
