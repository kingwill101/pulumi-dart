// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterRoutingAgent {
  /// Boolean flag whether the routing-agent should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterRoutingAgent].
  /// [enabled] Boolean flag whether the routing-agent should be enabled or not.
  KubernetesClusterRoutingAgent({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory KubernetesClusterRoutingAgent.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterRoutingAgent(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

