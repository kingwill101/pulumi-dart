// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_source_details_response.dart';

class GatewayRouteSetResponse {
  /// List of different Route Sources
  final pulumi.Input<Map<String, List<RouteSourceDetailsResponse>>>? details;
  /// List of different locations from where the routes are learned
  final pulumi.Input<List<String>>? locations;
  /// Route Set name
  final pulumi.Input<String>? name;

  /// Creates a new [GatewayRouteSetResponse].
  /// [details] List of different Route Sources
  /// [locations] List of different locations from where the routes are learned
  /// [name] Route Set name
  GatewayRouteSetResponse({
    this.details,
    this.locations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<Map<String, List<RouteSourceDetailsResponse>>, Map<String, List<Map<String, dynamic>>>>(details, (value) => pulumi.Input.encodeMapValues<List<RouteSourceDetailsResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<RouteSourceDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'locations': ?locations,
      'name': ?name,
    };
  }

  factory GatewayRouteSetResponse.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSetResponse(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<RouteSourceDetailsResponse>>(guardedValue, (value) => pulumi.Input.decodeList<RouteSourceDetailsResponse>(value, (value) => RouteSourceDetailsResponse.fromMap((value as Map).cast<String, dynamic>())))); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

