// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayAutoScaleBounds {
  /// Maximum Scale Units for Autoscale configuration
  final pulumi.Input<int?>? max;
  /// Minimum scale Units for Autoscale configuration
  final pulumi.Input<int?>? min;

  /// Creates a new [VirtualNetworkGatewayAutoScaleBounds].
  /// [max] Maximum Scale Units for Autoscale configuration
  /// [min] Minimum scale Units for Autoscale configuration
  const VirtualNetworkGatewayAutoScaleBounds({
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
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
