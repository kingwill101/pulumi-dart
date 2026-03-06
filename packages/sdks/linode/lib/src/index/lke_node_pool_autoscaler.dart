// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeNodePoolAutoscaler {
  /// The maximum number of nodes to autoscale to.
  final pulumi.Input<int>? max;
  /// The minimum number of nodes to autoscale to.
  final pulumi.Input<int>? min;

  /// Creates a new [LkeNodePoolAutoscaler].
  /// [max] The maximum number of nodes to autoscale to.
  /// [min] The minimum number of nodes to autoscale to.
  const LkeNodePoolAutoscaler({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory LkeNodePoolAutoscaler.fromMap(Map<String, dynamic> map) {
    return LkeNodePoolAutoscaler(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

