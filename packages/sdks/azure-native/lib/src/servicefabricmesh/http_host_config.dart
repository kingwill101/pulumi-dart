// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_config.dart';

/// Describes the hostname properties for http routing.
class HttpHostConfig {
  /// http hostname config name.
  final String name;
  /// Route information to use for routing. Routes are processed in the order they are specified. Specify routes that are more specific before routes that can handle general cases.
  final List<HttpRouteConfig> routes;

  /// Creates a new [HttpHostConfig].
  /// [name] http hostname config name.
  /// [routes] Route information to use for routing. Routes are processed in the order they are specified. Specify routes that are more specific before routes that can handle general cases.
  HttpHostConfig({
    required this.name,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'routes': pulumi.Input.encodeList<HttpRouteConfig, Map<String, dynamic>>(routes, (value) => value.toMap()),
    };
  }

  factory HttpHostConfig.fromMap(Map<String, dynamic> map) {
    return HttpHostConfig(
      name: map['name'] as String,
      routes: pulumi.Input.decodeList<HttpRouteConfig>(map['routes'], (value) => HttpRouteConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

