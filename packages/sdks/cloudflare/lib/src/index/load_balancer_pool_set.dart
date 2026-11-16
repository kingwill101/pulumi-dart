// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_pool_set_fixed_response.dart';
import 'load_balancer_pool_set_match.dart';
import 'load_balancer_pool_set_overrides.dart';

class LoadBalancerPoolSet {
  /// Disable this specific pool set. It will no longer be evaluated.
  final pulumi.Input<bool?>? disabled;
  /// A collection of fields used to directly respond to the client instead of routing to a pool. When supplied on a rule, that rule stops further rule evaluation.
  final pulumi.Input<LoadBalancerPoolSetFixedResponse?>? fixedResponse;
  /// Determines which requests a pool set applies to. Set `topology` to match by location or `default: true` to match all requests; the two are mutually exclusive. A pool set with no `match` matches all requests.
  final pulumi.Input<LoadBalancerPoolSetMatch?>? match;
  /// A human-readable name for this pool set.
  final pulumi.Input<String?>? name;
  /// The behavior a pool set applies when its `match` succeeds. A strict subset of a rule's `overrides`: a pool set replaces the topology wholesale with a flat pool list (`pools`), so only the declarative pool-routing fields plus `fallbackPool` and `steeringPolicy` are settable. All fields are optional.
  final pulumi.Input<LoadBalancerPoolSetOverrides?>? overrides;

  /// Creates a new [LoadBalancerPoolSet].
  /// [disabled] Disable this specific pool set. It will no longer be evaluated.
  /// [fixedResponse] A collection of fields used to directly respond to the client instead of routing to a pool. When supplied on a rule, that rule stops further rule evaluation.
  /// [match] Determines which requests a pool set applies to. Set `topology` to match by location or `default: true` to match all requests; the two are mutually exclusive. A pool set with no `match` matches all requests.
  /// [name] A human-readable name for this pool set.
  /// [overrides] The behavior a pool set applies when its `match` succeeds. A strict subset of a rule's `overrides`: a pool set replaces the topology wholesale with a flat pool list (`pools`), so only the declarative pool-routing fields plus `fallbackPool` and `steeringPolicy` are settable. All fields are optional.
  const LoadBalancerPoolSet({
    this.disabled,
    this.fixedResponse,
    this.match,
    this.name,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'fixedResponse': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolSetFixedResponse, Map<String, dynamic>>(fixedResponse, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolSetMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': ?name,
      'overrides': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolSetOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
    };
  }

  factory LoadBalancerPoolSet.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolSet(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fixedResponse: (() { final guardedValue = map['fixedResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolSetFixedResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolSetMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolSetOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
