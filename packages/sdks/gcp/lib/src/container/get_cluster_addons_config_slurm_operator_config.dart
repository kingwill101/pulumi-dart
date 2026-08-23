// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigSlurmOperatorConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigSlurmOperatorConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigSlurmOperatorConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigSlurmOperatorConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigSlurmOperatorConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
