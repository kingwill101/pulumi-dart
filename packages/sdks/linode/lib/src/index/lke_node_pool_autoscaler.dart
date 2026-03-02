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
  LkeNodePoolAutoscaler({
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
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

