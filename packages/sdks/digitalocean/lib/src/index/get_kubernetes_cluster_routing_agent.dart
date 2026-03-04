// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterRoutingAgent {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterRoutingAgent].
  /// [enabled] Required.
  GetKubernetesClusterRoutingAgent({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetKubernetesClusterRoutingAgent.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterRoutingAgent(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
