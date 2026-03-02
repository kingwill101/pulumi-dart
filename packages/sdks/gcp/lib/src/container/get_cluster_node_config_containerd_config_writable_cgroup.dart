// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigContainerdConfigWritableCgroup {
  /// Whether writable cgroups are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigContainerdConfigWritableCgroup].
  /// [enabled] Whether writable cgroups are enabled.
  GetClusterNodeConfigContainerdConfigWritableCgroup({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodeConfigContainerdConfigWritableCgroup.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigWritableCgroup(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

