// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_config_response.dart';

/// Describes the hostname properties for http routing.
class HttpHostConfigResponse {
  /// http hostname config name.
  final pulumi.Input<String> name;
  /// Route information to use for routing. Routes are processed in the order they are specified. Specify routes that are more specific before routes that can handle general cases.
  final pulumi.Input<List<HttpRouteConfigResponse>> routes;

  /// Creates a new [HttpHostConfigResponse].
  /// [name] http hostname config name.
  /// [routes] Route information to use for routing. Routes are processed in the order they are specified. Specify routes that are more specific before routes that can handle general cases.
  const HttpHostConfigResponse({
    required this.name,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'routes': pulumi.Input.mapInputValue<List<HttpRouteConfigResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<HttpRouteConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpHostConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpHostConfigResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      routes: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteConfigResponse>(map['routes']!, (value) => HttpRouteConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
