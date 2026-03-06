// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  const NodePoolNodeConfigContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigWritableCgroups(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

