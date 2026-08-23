// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A Policy creation input.
class A2APolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int>? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  final pulumi.Input<String> multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;

  /// Creates a new [A2APolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  const A2APolicyCreationInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    required this.multiVmSyncStatus,
    this.recoveryPointHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
    };
  }

  factory A2APolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return A2APolicyCreationInput(
      appConsistentFrequencyInMinutes: (() { final guardedValue = map['appConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      crashConsistentFrequencyInMinutes: (() { final guardedValue = map['crashConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      multiVmSyncStatus: pulumi.Input.fromValue(map['multiVmSyncStatus'] as String),
      recoveryPointHistory: (() { final guardedValue = map['recoveryPointHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
