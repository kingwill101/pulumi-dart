// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_destination.dart';
import 'http_route_match_rule.dart';

/// Describes the hostname properties for http routing.
class HttpRouteConfig {
  /// Describes destination endpoint for routing traffic.
  final pulumi.Input<GatewayDestination> destination;
  /// Describes a rule for http route matching.
  final pulumi.Input<HttpRouteMatchRule> match;
  /// http route name.
  final pulumi.Input<String> name;

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
      'destination': pulumi.Input.mapInputValue<GatewayDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<HttpRouteMatchRule, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory HttpRouteConfig.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfig(
      destination: pulumi.Input.fromValue(GatewayDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      match: pulumi.Input.fromValue(HttpRouteMatchRule.fromMap((map['match']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

