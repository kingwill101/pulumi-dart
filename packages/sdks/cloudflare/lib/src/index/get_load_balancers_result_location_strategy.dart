// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersResultLocationStrategy {
  /// Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
  final pulumi.Input<String> mode;
  /// Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
  final pulumi.Input<String> preferEcs;

  /// Creates a new [GetLoadBalancersResultLocationStrategy].
  /// [mode] Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
  /// [preferEcs] Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
  const GetLoadBalancersResultLocationStrategy({
    required this.mode,
    required this.preferEcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'preferEcs': preferEcs,
    };
  }

  factory GetLoadBalancersResultLocationStrategy.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultLocationStrategy(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      preferEcs: pulumi.Input.fromValue(map['preferEcs'] as String),
    );
  }
}
