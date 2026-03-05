// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigConfigConnectorConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigConfigConnectorConfig].
  /// [enabled] Required.
  ClusterAddonsConfigConfigConnectorConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigConfigConnectorConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigConfigConnectorConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

