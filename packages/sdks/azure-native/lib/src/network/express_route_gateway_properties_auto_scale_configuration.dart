// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_gateway_properties_bounds.dart';

/// Configuration for auto scaling.
class ExpressRouteGatewayPropertiesAutoScaleConfiguration {
  /// Minimum and maximum number of scale units to deploy.
  final pulumi.Input<ExpressRouteGatewayPropertiesBounds>? bounds;

  /// Creates a new [ExpressRouteGatewayPropertiesAutoScaleConfiguration].
  /// [bounds] Minimum and maximum number of scale units to deploy.
  ExpressRouteGatewayPropertiesAutoScaleConfiguration({this.bounds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressRouteGatewayPropertiesBounds,
            Map<String, dynamic>
          >(bounds, (value) => value.toMap()),
    };
  }

  factory ExpressRouteGatewayPropertiesAutoScaleConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpressRouteGatewayPropertiesAutoScaleConfiguration(
      bounds: (() {
        final guardedValue = map['bounds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressRouteGatewayPropertiesBounds.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
