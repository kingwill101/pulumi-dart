// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigAgentSandboxConfig {
  /// Whether the Agent Sandbox feature is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigAgentSandboxConfig].
  /// [enabled] Whether the Agent Sandbox feature is enabled.
  const GetClusterAddonsConfigAgentSandboxConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigAgentSandboxConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigAgentSandboxConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
