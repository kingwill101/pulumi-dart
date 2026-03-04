// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A specific policy details.
class A2APolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;

  /// The crash consistent snapshot frequency in minutes.
  final pulumi.Input<int>? crashConsistentFrequencyInMinutes;

  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;

  /// A value indicating whether multi-VM sync has to be enabled.
  final pulumi.Input<String>? multiVmSyncStatus;

  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;

  /// The recovery point threshold in minutes.
  final pulumi.Input<int>? recoveryPointThresholdInMinutes;

  /// Creates a new [A2APolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency in minutes.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  A2APolicyDetailsResponse({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    this.multiVmSyncStatus,
    this.recoveryPointHistory,
    this.recoveryPointThresholdInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
      'recoveryPointThresholdInMinutes': ?recoveryPointThresholdInMinutes,
    };
  }

  factory A2APolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2APolicyDetailsResponse(
      appConsistentFrequencyInMinutes: (() {
        final guardedValue = map['appConsistentFrequencyInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      crashConsistentFrequencyInMinutes: (() {
        final guardedValue = map['crashConsistentFrequencyInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      multiVmSyncStatus: (() {
        final guardedValue = map['multiVmSyncStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryPointHistory: (() {
        final guardedValue = map['recoveryPointHistory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      recoveryPointThresholdInMinutes: (() {
        final guardedValue = map['recoveryPointThresholdInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
