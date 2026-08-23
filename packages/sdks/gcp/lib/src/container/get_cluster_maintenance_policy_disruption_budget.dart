// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyDisruptionBudget {
  final pulumi.Input<String> lastDisruptionTime;
  final pulumi.Input<String> lastMinorVersionDisruptionTime;
  final pulumi.Input<String> minorVersionDisruptionInterval;
  final pulumi.Input<String> patchVersionDisruptionInterval;

  /// Creates a new [GetClusterMaintenancePolicyDisruptionBudget].
  /// [lastDisruptionTime] Required.
  /// [lastMinorVersionDisruptionTime] Required.
  /// [minorVersionDisruptionInterval] Required.
  /// [patchVersionDisruptionInterval] Required.
  const GetClusterMaintenancePolicyDisruptionBudget({
    required this.lastDisruptionTime,
    required this.lastMinorVersionDisruptionTime,
    required this.minorVersionDisruptionInterval,
    required this.patchVersionDisruptionInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastDisruptionTime': lastDisruptionTime,
      'lastMinorVersionDisruptionTime': lastMinorVersionDisruptionTime,
      'minorVersionDisruptionInterval': minorVersionDisruptionInterval,
      'patchVersionDisruptionInterval': patchVersionDisruptionInterval,
    };
  }

  factory GetClusterMaintenancePolicyDisruptionBudget.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyDisruptionBudget(
      lastDisruptionTime: pulumi.Input.fromValue(map['lastDisruptionTime'] as String),
      lastMinorVersionDisruptionTime: pulumi.Input.fromValue(map['lastMinorVersionDisruptionTime'] as String),
      minorVersionDisruptionInterval: pulumi.Input.fromValue(map['minorVersionDisruptionInterval'] as String),
      patchVersionDisruptionInterval: pulumi.Input.fromValue(map['patchVersionDisruptionInterval'] as String),
    );
  }
}
