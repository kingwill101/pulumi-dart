// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route destination.
class RoutingRuleRouteDestination {
  /// Destination address.
  final pulumi.Input<String> destinationAddress;
  /// Destination type.
  final pulumi.Input<String> type;

  /// Creates a new [RoutingRuleRouteDestination].
  /// [destinationAddress] Destination address.
  /// [type] Destination type.
  RoutingRuleRouteDestination({
    required this.destinationAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'type': type,
    };
  }

  factory RoutingRuleRouteDestination.fromMap(Map<String, dynamic> map) {
    return RoutingRuleRouteDestination(
      destinationAddress: pulumi.Input.fromValue(map['destinationAddress'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

