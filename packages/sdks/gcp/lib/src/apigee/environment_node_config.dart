// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentNodeConfig {
  /// (Output)
  /// The current total number of gateway nodes that each environment currently has across
  /// all instances.
  final pulumi.Input<String>? currentAggregateNodeCount;
  /// The maximum total number of gateway nodes that the is reserved for all instances that
  /// has the specified environment. If not specified, the default is determined by the
  /// recommended maximum number of nodes for that gateway.
  final pulumi.Input<String>? maxNodeCount;
  /// The minimum total number of gateway nodes that the is reserved for all instances that
  /// has the specified environment. If not specified, the default is determined by the
  /// recommended minimum number of nodes for that gateway.
  final pulumi.Input<String>? minNodeCount;

  /// Creates a new [EnvironmentNodeConfig].
  /// [currentAggregateNodeCount] (Output)
  /// [maxNodeCount] The maximum total number of gateway nodes that the is reserved for all instances that
  /// [minNodeCount] The minimum total number of gateway nodes that the is reserved for all instances that
  const EnvironmentNodeConfig({
    this.currentAggregateNodeCount,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAggregateNodeCount': ?currentAggregateNodeCount,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory EnvironmentNodeConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentNodeConfig(
      currentAggregateNodeCount: (() { final guardedValue = map['currentAggregateNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
