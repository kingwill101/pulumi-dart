// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyDisruptionBudget {
  /// The last disruption time of the control plane.
  ///
  /// Examples:
  final pulumi.Input<String>? lastDisruptionTime;
  /// The last minor version disruption time of the control plane.
  final pulumi.Input<String>? lastMinorVersionDisruptionTime;
  /// The minimum duration between two minor version upgrades of the control plane.
  final pulumi.Input<String>? minorVersionDisruptionInterval;
  /// The minimum duration between two patch version upgrades of the control plane.
  final pulumi.Input<String>? patchVersionDisruptionInterval;

  /// Creates a new [ClusterMaintenancePolicyDisruptionBudget].
  /// [lastDisruptionTime] The last disruption time of the control plane.
  /// [lastMinorVersionDisruptionTime] The last minor version disruption time of the control plane.
  /// [minorVersionDisruptionInterval] The minimum duration between two minor version upgrades of the control plane.
  /// [patchVersionDisruptionInterval] The minimum duration between two patch version upgrades of the control plane.
  const ClusterMaintenancePolicyDisruptionBudget({
    this.lastDisruptionTime,
    this.lastMinorVersionDisruptionTime,
    this.minorVersionDisruptionInterval,
    this.patchVersionDisruptionInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastDisruptionTime': ?lastDisruptionTime,
      'lastMinorVersionDisruptionTime': ?lastMinorVersionDisruptionTime,
      'minorVersionDisruptionInterval': ?minorVersionDisruptionInterval,
      'patchVersionDisruptionInterval': ?patchVersionDisruptionInterval,
    };
  }

  factory ClusterMaintenancePolicyDisruptionBudget.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyDisruptionBudget(
      lastDisruptionTime: (() { final guardedValue = map['lastDisruptionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastMinorVersionDisruptionTime: (() { final guardedValue = map['lastMinorVersionDisruptionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minorVersionDisruptionInterval: (() { final guardedValue = map['minorVersionDisruptionInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchVersionDisruptionInterval: (() { final guardedValue = map['patchVersionDisruptionInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
