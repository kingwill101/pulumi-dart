// ignore_for_file: unused_element, unnecessary_cast


class GetLkeClusterPoolAutoscaler {
  /// The default policy. A value of true means a default policy of DENY. A value of false means a default policy of ALLOW.
  final bool enabled;
  /// The maximum number of nodes to autoscale to.
  final int max;
  /// The minimum number of nodes to autoscale to.
  final int min;

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
      enabled: map['enabled'] as bool,
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

