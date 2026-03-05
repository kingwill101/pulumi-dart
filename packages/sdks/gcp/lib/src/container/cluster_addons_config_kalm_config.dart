// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigKalmConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigKalmConfig].
  /// [enabled] Required.
  ClusterAddonsConfigKalmConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigKalmConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigKalmConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

