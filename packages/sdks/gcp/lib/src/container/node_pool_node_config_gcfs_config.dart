// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  NodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigGcfsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

