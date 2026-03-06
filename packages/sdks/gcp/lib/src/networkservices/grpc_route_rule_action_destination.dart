// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleActionDestination {
  /// The URL of a BackendService to route traffic to.
  final pulumi.Input<String>? serviceName;
  /// Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  final pulumi.Input<int>? weight;

  /// Creates a new [GrpcRouteRuleActionDestination].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  const GrpcRouteRuleActionDestination({
    this.serviceName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
      'weight': ?weight,
    };
  }

  factory GrpcRouteRuleActionDestination.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionDestination(
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

