// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto-scaling properties of a Big Data pool powered by Apache Spark
class AutoScalePropertiesResponse {
  /// Whether automatic scaling is enabled for the Big Data pool.
  final pulumi.Input<bool>? enabled;
  /// The maximum number of nodes the Big Data pool can support.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes the Big Data pool can support.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [AutoScalePropertiesResponse].
  /// [enabled] Whether automatic scaling is enabled for the Big Data pool.
  /// [maxNodeCount] The maximum number of nodes the Big Data pool can support.
  /// [minNodeCount] The minimum number of nodes the Big Data pool can support.
  const AutoScalePropertiesResponse({
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

  factory AutoScalePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalePropertiesResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
