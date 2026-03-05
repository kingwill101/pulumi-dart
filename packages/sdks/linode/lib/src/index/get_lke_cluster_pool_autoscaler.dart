// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeClusterPoolAutoscaler {
  /// The default policy. A value of true means a default policy of DENY. A value of false means a default policy of ALLOW.
  final pulumi.Input<bool> enabled;
  /// The maximum number of nodes to autoscale to.
  final pulumi.Input<int> max;
  /// The minimum number of nodes to autoscale to.
  final pulumi.Input<int> min;

  /// Creates a new [GetLkeClusterPoolAutoscaler].
  /// [enabled] The default policy. A value of true means a default policy of DENY. A value of false means a default policy of ALLOW.
  /// [max] The maximum number of nodes to autoscale to.
  /// [min] The minimum number of nodes to autoscale to.
  GetLkeClusterPoolAutoscaler({
    required this.enabled,
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'max': max,
      'min': min,
    };
  }

  factory GetLkeClusterPoolAutoscaler.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPoolAutoscaler(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}

