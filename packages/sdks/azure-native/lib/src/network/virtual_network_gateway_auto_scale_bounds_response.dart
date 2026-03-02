// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayAutoScaleBoundsResponse {
  /// Maximum Scale Units for Autoscale configuration
  final pulumi.Input<int>? max;
  /// Minimum scale Units for Autoscale configuration
  final pulumi.Input<int>? min;

  /// Creates a new [VirtualNetworkGatewayAutoScaleBoundsResponse].
  /// [max] Maximum Scale Units for Autoscale configuration
  /// [min] Minimum scale Units for Autoscale configuration
  VirtualNetworkGatewayAutoScaleBoundsResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VirtualNetworkGatewayAutoScaleBoundsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleBoundsResponse(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

