// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigAgentSandboxConfig {
  /// Whether the Agent Sandbox addon is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigAgentSandboxConfig].
  /// [enabled] Whether the Agent Sandbox addon is enabled.
  const ClusterAddonsConfigAgentSandboxConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigAgentSandboxConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigAgentSandboxConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
