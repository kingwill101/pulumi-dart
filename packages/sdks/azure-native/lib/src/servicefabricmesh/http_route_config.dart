// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_destination.dart';
import 'http_route_match_rule.dart';

/// Describes the hostname properties for http routing.
class HttpRouteConfig {
  /// Describes destination endpoint for routing traffic.
  final GatewayDestination destination;
  /// Describes a rule for http route matching.
  final HttpRouteMatchRule match;
  /// http route name.
  final String name;

  /// Creates a new [HttpRouteConfig].
  /// [destination] Describes destination endpoint for routing traffic.
  /// [match] Describes a rule for http route matching.
  /// [name] http route name.
  HttpRouteConfig({
    required this.destination,
    required this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
      'match': match.toMap(),
      'name': name,
    };
  }

  factory HttpRouteConfig.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfig(
      destination: GatewayDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      match: HttpRouteMatchRule.fromMap((map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

