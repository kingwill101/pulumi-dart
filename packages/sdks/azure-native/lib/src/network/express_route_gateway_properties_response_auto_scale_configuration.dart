// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_gateway_properties_response_bounds.dart';

/// Configuration for auto scaling.
class ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration {
  /// Minimum and maximum number of scale units to deploy.
  final pulumi.Input<ExpressRouteGatewayPropertiesResponseBounds>? bounds;

  /// Creates a new [ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration].
  /// [bounds] Minimum and maximum number of scale units to deploy.
  const ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?pulumi.Input.mapOptionalInputValue<ExpressRouteGatewayPropertiesResponseBounds, Map<String, dynamic>>(bounds, (value) => value.toMap()),
    };
  }

  factory ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration(
      bounds: (() { final guardedValue = map['bounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteGatewayPropertiesResponseBounds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
