// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigContainerdConfigWritableCgroups {
  /// Whether writable cgroups are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodeConfigContainerdConfigWritableCgroups].
  /// [enabled] Whether writable cgroups are enabled.
  const ClusterNodeConfigContainerdConfigWritableCgroups({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodeConfigContainerdConfigWritableCgroups.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigWritableCgroups(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

