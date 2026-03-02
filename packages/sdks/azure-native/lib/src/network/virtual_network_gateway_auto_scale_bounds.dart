// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayAutoScaleBounds {
  /// Maximum Scale Units for Autoscale configuration
  final pulumi.Input<int>? max;
  /// Minimum scale Units for Autoscale configuration
  final pulumi.Input<int>? min;

  /// Creates a new [VirtualNetworkGatewayAutoScaleBounds].
  /// [max] Maximum Scale Units for Autoscale configuration
  /// [min] Minimum scale Units for Autoscale configuration
  VirtualNetworkGatewayAutoScaleBounds({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VirtualNetworkGatewayAutoScaleBounds.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleBounds(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

