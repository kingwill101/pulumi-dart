// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNodePoolUpgradeSettings {
  /// The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  final pulumi.Input<int>? drainTimeoutInMinutes;

  /// The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  final pulumi.Input<String>? maxSurge;

  /// The maximum number or percentage of nodes which can be unavailable during the upgrade.
  ///
  /// &gt; **Note:** Exactly one of `max_surge` or `max_unavailable` must be specified.
  final pulumi.Input<String>? maxUnavailable;

  /// The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  final pulumi.Input<int>? nodeSoakDurationInMinutes;

  /// Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  final pulumi.Input<String>? undrainableNodeBehavior;

  /// Creates a new [KubernetesClusterNodePoolUpgradeSettings].
  /// [drainTimeoutInMinutes] The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  /// [maxSurge] The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  /// [maxUnavailable] The maximum number or percentage of nodes which can be unavailable during the upgrade.
  /// [nodeSoakDurationInMinutes] The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  /// [undrainableNodeBehavior] Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  KubernetesClusterNodePoolUpgradeSettings({
    this.drainTimeoutInMinutes,
    this.maxSurge,
    this.maxUnavailable,
    this.nodeSoakDurationInMinutes,
    this.undrainableNodeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutInMinutes': ?drainTimeoutInMinutes,
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
      'nodeSoakDurationInMinutes': ?nodeSoakDurationInMinutes,
      'undrainableNodeBehavior': ?undrainableNodeBehavior,
    };
  }

  factory KubernetesClusterNodePoolUpgradeSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterNodePoolUpgradeSettings(
      drainTimeoutInMinutes: (() {
        final guardedValue = map['drainTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxSurge: (() {
        final guardedValue = map['maxSurge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxUnavailable: (() {
        final guardedValue = map['maxUnavailable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeSoakDurationInMinutes: (() {
        final guardedValue = map['nodeSoakDurationInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      undrainableNodeBehavior: (() {
        final guardedValue = map['undrainableNodeBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
