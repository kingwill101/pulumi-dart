// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Minimum and maximum number of scale units to deploy.
class ExpressRouteGatewayPropertiesBounds {
  /// Maximum number of scale units deployed for ExpressRoute gateway.
  final pulumi.Input<int>? max;
  /// Minimum number of scale units deployed for ExpressRoute gateway.
  final pulumi.Input<int>? min;

  /// Creates a new [ExpressRouteGatewayPropertiesBounds].
  /// [max] Maximum number of scale units deployed for ExpressRoute gateway.
  /// [min] Minimum number of scale units deployed for ExpressRoute gateway.
  const ExpressRouteGatewayPropertiesBounds({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory ExpressRouteGatewayPropertiesBounds.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayPropertiesBounds(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

