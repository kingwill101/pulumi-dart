// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsRouteRuleActionDestination {
  /// The URL of a BackendService to route traffic to.
  final pulumi.Input<String>? serviceName;
  /// Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  final pulumi.Input<int>? weight;

  /// Creates a new [TlsRouteRuleActionDestination].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  TlsRouteRuleActionDestination({
    this.serviceName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
      'weight': ?weight,
    };
  }

  factory TlsRouteRuleActionDestination.fromMap(Map<String, dynamic> map) {
    return TlsRouteRuleActionDestination(
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

