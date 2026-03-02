// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto-scaling properties of a Big Data pool powered by Apache Spark
class AutoScaleProperties {
  /// Whether automatic scaling is enabled for the Big Data pool.
  final pulumi.Input<bool>? enabled;
  /// The maximum number of nodes the Big Data pool can support.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes the Big Data pool can support.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [AutoScaleProperties].
  /// [enabled] Whether automatic scaling is enabled for the Big Data pool.
  /// [maxNodeCount] The maximum number of nodes the Big Data pool can support.
  /// [minNodeCount] The minimum number of nodes the Big Data pool can support.
  AutoScaleProperties({
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory AutoScaleProperties.fromMap(Map<String, dynamic> map) {
    return AutoScaleProperties(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount']! as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount']! as int).input(),
    );
  }
}

