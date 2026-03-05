// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionNodeConfig {
  /// Minimum number of nodes in the runtime nodes.
  final pulumi.Input<int>? maxNodeCount;
  /// Minimum number of nodes in the runtime nodes.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [ConnectionNodeConfig].
  /// [maxNodeCount] Minimum number of nodes in the runtime nodes.
  /// [minNodeCount] Minimum number of nodes in the runtime nodes.
  ConnectionNodeConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory ConnectionNodeConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionNodeConfig(
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

