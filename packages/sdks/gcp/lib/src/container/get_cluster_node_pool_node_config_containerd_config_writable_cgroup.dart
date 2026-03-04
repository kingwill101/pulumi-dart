// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup].
  /// [enabled] Whether writable cgroups are enabled.
  GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
