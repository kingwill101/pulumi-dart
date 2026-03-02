// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMWare Azure specific protection profile Input.
class InMagePolicyInput {
  /// The app consistent snapshot frequency (in minutes).
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'InMage'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  final pulumi.Input<String> multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final pulumi.Input<int>? recoveryPointThresholdInMinutes;

  /// Creates a new [InMagePolicyInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  InMagePolicyInput({
    this.appConsistentFrequencyInMinutes,
    required this.instanceType,
    required this.multiVmSyncStatus,
    this.recoveryPointHistory,
    this.recoveryPointThresholdInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
      'recoveryPointThresholdInMinutes': ?recoveryPointThresholdInMinutes,
    };
  }

  factory InMagePolicyInput.fromMap(Map<String, dynamic> map) {
    return InMagePolicyInput(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : (map['appConsistentFrequencyInMinutes']! as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      multiVmSyncStatus: (map['multiVmSyncStatus'] as String).input(),
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : (map['recoveryPointHistory']! as int).input(),
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : (map['recoveryPointThresholdInMinutes']! as int).input(),
    );
  }
}

