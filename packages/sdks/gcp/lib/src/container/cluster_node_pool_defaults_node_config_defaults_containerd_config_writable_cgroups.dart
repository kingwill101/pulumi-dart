// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

