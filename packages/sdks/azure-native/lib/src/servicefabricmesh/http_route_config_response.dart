// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_destination_response.dart';
import 'http_route_match_rule_response.dart';

/// Describes the hostname properties for http routing.
class HttpRouteConfigResponse {
  /// Describes destination endpoint for routing traffic.
  final GatewayDestinationResponse destination;
  /// Describes a rule for http route matching.
  final HttpRouteMatchRuleResponse match;
  /// http route name.
  final String name;

  /// Creates a new [HttpRouteConfigResponse].
  /// [destination] Describes destination endpoint for routing traffic.
  /// [match] Describes a rule for http route matching.
  /// [name] http route name.
  HttpRouteConfigResponse({
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

  factory HttpRouteConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigResponse(
      destination: GatewayDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      match: HttpRouteMatchRuleResponse.fromMap((map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

