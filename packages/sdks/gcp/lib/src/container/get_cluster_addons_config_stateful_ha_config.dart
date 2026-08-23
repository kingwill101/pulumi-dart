// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigStatefulHaConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigStatefulHaConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigStatefulHaConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigStatefulHaConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigStatefulHaConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
