// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VirtualHub Router autoscale configuration.
class VirtualRouterAutoScaleConfiguration {
  /// The minimum number of scale units for VirtualHub Router.
  final pulumi.Input<int?>? minCapacity;

  /// Creates a new [VirtualRouterAutoScaleConfiguration].
  /// [minCapacity] The minimum number of scale units for VirtualHub Router.
  const VirtualRouterAutoScaleConfiguration({
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCapacity': ?minCapacity,
    };
  }

  factory VirtualRouterAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualRouterAutoScaleConfiguration(
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
