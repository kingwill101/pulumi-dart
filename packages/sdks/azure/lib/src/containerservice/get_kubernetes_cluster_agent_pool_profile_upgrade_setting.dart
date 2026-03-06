// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterAgentPoolProfileUpgradeSetting {
  /// The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails.
  final pulumi.Input<int> drainTimeoutInMinutes;
  /// The maximum number or percentage of nodes that will be added to the Node Pool size during an upgrade.
  final pulumi.Input<String> maxSurge;
  final pulumi.Input<String> maxUnavailable;
  /// The amount of time in minutes to wait after draining a node and before reimaging it and moving on to next node.
  final pulumi.Input<int> nodeSoakDurationInMinutes;
  /// The action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`.
  final pulumi.Input<String> undrainableNodeBehavior;

  /// Creates a new [GetKubernetesClusterAgentPoolProfileUpgradeSetting].
  /// [drainTimeoutInMinutes] The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails.
  /// [maxSurge] The maximum number or percentage of nodes that will be added to the Node Pool size during an upgrade.
  /// [maxUnavailable] Required.
  /// [nodeSoakDurationInMinutes] The amount of time in minutes to wait after draining a node and before reimaging it and moving on to next node.
  /// [undrainableNodeBehavior] The action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`.
  const GetKubernetesClusterAgentPoolProfileUpgradeSetting({
    required this.drainTimeoutInMinutes,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.nodeSoakDurationInMinutes,
    required this.undrainableNodeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutInMinutes': drainTimeoutInMinutes,
      'maxSurge': maxSurge,
      'maxUnavailable': maxUnavailable,
      'nodeSoakDurationInMinutes': nodeSoakDurationInMinutes,
      'undrainableNodeBehavior': undrainableNodeBehavior,
    };
  }

  factory GetKubernetesClusterAgentPoolProfileUpgradeSetting.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAgentPoolProfileUpgradeSetting(
      drainTimeoutInMinutes: pulumi.Input.fromValue(map['drainTimeoutInMinutes'] as int),
      maxSurge: pulumi.Input.fromValue(map['maxSurge'] as String),
      maxUnavailable: pulumi.Input.fromValue(map['maxUnavailable'] as String),
      nodeSoakDurationInMinutes: pulumi.Input.fromValue(map['nodeSoakDurationInMinutes'] as int),
      undrainableNodeBehavior: pulumi.Input.fromValue(map['undrainableNodeBehavior'] as String),
    );
  }
}

