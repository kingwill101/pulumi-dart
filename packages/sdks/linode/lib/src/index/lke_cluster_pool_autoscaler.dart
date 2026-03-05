// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeClusterPoolAutoscaler {
  /// The maximum number of nodes to autoscale to.
  final pulumi.Input<int> max;
  /// The minimum number of nodes to autoscale to.
  final pulumi.Input<int> min;

  /// Creates a new [LkeClusterPoolAutoscaler].
  /// [max] The maximum number of nodes to autoscale to.
  /// [min] The minimum number of nodes to autoscale to.
  LkeClusterPoolAutoscaler({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory LkeClusterPoolAutoscaler.fromMap(Map<String, dynamic> map) {
    return LkeClusterPoolAutoscaler(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}

