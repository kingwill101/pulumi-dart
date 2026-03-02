// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigGvnic {
  /// Whether or not gvnic is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigGvnic].
  /// [enabled] Whether or not gvnic is enabled
  NodePoolNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigGvnic(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

