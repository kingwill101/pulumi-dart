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
  const VirtualNetworkGatewayAutoScaleBoundsResponse({
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
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
