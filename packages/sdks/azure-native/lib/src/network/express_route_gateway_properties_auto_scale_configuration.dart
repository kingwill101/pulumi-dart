// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_gateway_properties_bounds.dart';

/// Configuration for auto scaling.
class ExpressRouteGatewayPropertiesAutoScaleConfiguration {
  /// Minimum and maximum number of scale units to deploy.
  final ExpressRouteGatewayPropertiesBounds? bounds;

  /// Creates a new [ExpressRouteGatewayPropertiesAutoScaleConfiguration].
  /// [bounds] Minimum and maximum number of scale units to deploy.
  ExpressRouteGatewayPropertiesAutoScaleConfiguration({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?bounds == null ? null : bounds!.toMap(),
    };
  }

  factory ExpressRouteGatewayPropertiesAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayPropertiesAutoScaleConfiguration(
      bounds: map['bounds'] == null ? null : ExpressRouteGatewayPropertiesBounds.fromMap((map['bounds'] as Map).cast<String, dynamic>()),
    );
  }
}

