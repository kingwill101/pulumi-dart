// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The autoscaling limits for the instance. Users can define the minimum and maximum compute capacity allocated to the instance, and the autoscaler will only scale within that range. Users can either use nodes or processing units to specify the limits, but should use the same unit to set both the min_limit and max_limit.
class AutoscalingLimits {
  /// Maximum number of nodes allocated to the instance. If set, this number should be greater than or equal to min_nodes.
  final pulumi.Input<int>? maxNodes;

  /// Maximum number of processing units allocated to the instance. If set, this number should be multiples of 1000 and be greater than or equal to min_processing_units.
  final pulumi.Input<int>? maxProcessingUnits;

  /// Minimum number of nodes allocated to the instance. If set, this number should be greater than or equal to 1.
  final pulumi.Input<int>? minNodes;

  /// Minimum number of processing units allocated to the instance. If set, this number should be multiples of 1000.
  final pulumi.Input<int>? minProcessingUnits;

  /// Creates a new [AutoscalingLimits].
  /// [maxNodes] Maximum number of nodes allocated to the instance. If set, this number should be greater than or equal to min_nodes.
  /// [maxProcessingUnits] Maximum number of processing units allocated to the instance. If set, this number should be multiples of 1000 and be greater than or equal to min_processing_units.
  /// [minNodes] Minimum number of nodes allocated to the instance. If set, this number should be greater than or equal to 1.
  /// [minProcessingUnits] Minimum number of processing units allocated to the instance. If set, this number should be multiples of 1000.
  AutoscalingLimits({
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'maxProcessingUnits': ?maxProcessingUnits,
      'minNodes': ?minNodes,
      'minProcessingUnits': ?minProcessingUnits,
    };
  }

  factory AutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimits(
      maxNodes: (() {
        final guardedValue = map['maxNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxProcessingUnits: (() {
        final guardedValue = map['maxProcessingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodes: (() {
        final guardedValue = map['minNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minProcessingUnits: (() {
        final guardedValue = map['minProcessingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
