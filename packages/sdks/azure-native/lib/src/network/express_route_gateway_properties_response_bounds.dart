// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Minimum and maximum number of scale units to deploy.
class ExpressRouteGatewayPropertiesResponseBounds {
  /// Maximum number of scale units deployed for ExpressRoute gateway.
  final pulumi.Input<int>? max;
  /// Minimum number of scale units deployed for ExpressRoute gateway.
  final pulumi.Input<int>? min;

  /// Creates a new [ExpressRouteGatewayPropertiesResponseBounds].
  /// [max] Maximum number of scale units deployed for ExpressRoute gateway.
  /// [min] Minimum number of scale units deployed for ExpressRoute gateway.
  ExpressRouteGatewayPropertiesResponseBounds({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory ExpressRouteGatewayPropertiesResponseBounds.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayPropertiesResponseBounds(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

