// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPoolUpgradeSettings {
  /// The maximum time in seconds that is allowed for a node drain to complete before proceeding with the upgrade of the agent pool. If not specified during creation, a value of 1800 seconds is used.
  final pulumi.Input<double>? drainTimeout;
  /// The maximum number or percentage of nodes that are surged during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified during creation, a value of 1 is used. One of MaxSurge and MaxUnavailable must be greater than 0.
  final pulumi.Input<String>? maxSurge;
  /// The maximum number or percentage of nodes that can be unavailable during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified during creation, a value of 0 is used. One of MaxSurge and MaxUnavailable must be greater than 0.
  final pulumi.Input<String>? maxUnavailable;

  /// Creates a new [AgentPoolUpgradeSettings].
  /// [drainTimeout] The maximum time in seconds that is allowed for a node drain to complete before proceeding with the upgrade of the agent pool. If not specified during creation, a value of 1800 seconds is used.
  /// [maxSurge] The maximum number or percentage of nodes that are surged during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified during creation, a value of 1 is used. One of MaxSurge and MaxUnavailable must be greater than 0.
  /// [maxUnavailable] The maximum number or percentage of nodes that can be unavailable during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified during creation, a value of 0 is used. One of MaxSurge and MaxUnavailable must be greater than 0.
  AgentPoolUpgradeSettings({
    this.drainTimeout,
    this.maxSurge,
    this.maxUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeout': ?drainTimeout,
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
    };
  }

  factory AgentPoolUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return AgentPoolUpgradeSettings(
      drainTimeout: map['drainTimeout'] == null ? null : (map['drainTimeout']! as double).input(),
      maxSurge: map['maxSurge'] == null ? null : (map['maxSurge']! as String).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (map['maxUnavailable']! as String).input(),
    );
  }
}

