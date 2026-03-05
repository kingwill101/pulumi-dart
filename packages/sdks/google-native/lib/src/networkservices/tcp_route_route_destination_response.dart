// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the destination for traffic to be routed to.
class TcpRouteRouteDestinationResponse {
  /// The URL of a BackendService to route traffic to.
  final pulumi.Input<String> serviceName;
  /// Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: - weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.
  final pulumi.Input<int> weight;

  /// Creates a new [TcpRouteRouteDestinationResponse].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: - weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.
  TcpRouteRouteDestinationResponse({
    required this.serviceName,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
      'weight': weight,
    };
  }

  factory TcpRouteRouteDestinationResponse.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteDestinationResponse(
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

