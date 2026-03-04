// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_destination_response.dart';
import 'http_route_match_rule_response.dart';

/// Describes the hostname properties for http routing.
class HttpRouteConfigResponse {
  /// Describes destination endpoint for routing traffic.
  final pulumi.Input<GatewayDestinationResponse> destination;

  /// Describes a rule for http route matching.
  final pulumi.Input<HttpRouteMatchRuleResponse> match;

  /// http route name.
  final pulumi.Input<String> name;

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
      'destination':
          pulumi.Input.mapInputValue<
            GatewayDestinationResponse,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'match':
          pulumi.Input.mapInputValue<
            HttpRouteMatchRuleResponse,
            Map<String, dynamic>
          >(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory HttpRouteConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigResponse(
      destination: pulumi.Input.fromValue(
        GatewayDestinationResponse.fromMap(
          (map['destination']! as Map).cast<String, dynamic>(),
        ),
      ),
      match: pulumi.Input.fromValue(
        HttpRouteMatchRuleResponse.fromMap(
          (map['match']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
