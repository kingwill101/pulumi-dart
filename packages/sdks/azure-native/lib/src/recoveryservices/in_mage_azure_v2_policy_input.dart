// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMWare Azure specific policy Input.
class InMageAzureV2PolicyInput {
  /// The app consistent snapshot frequency (in minutes).
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int>? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'InMageAzureV2'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  final pulumi.Input<String> multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final pulumi.Input<int>? recoveryPointThresholdInMinutes;

  /// Creates a new [InMageAzureV2PolicyInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  InMageAzureV2PolicyInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    required this.multiVmSyncStatus,
    this.recoveryPointHistory,
    this.recoveryPointThresholdInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
      'recoveryPointThresholdInMinutes': ?recoveryPointThresholdInMinutes,
    };
  }

  factory InMageAzureV2PolicyInput.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2PolicyInput(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : (map['appConsistentFrequencyInMinutes'] as int).input(),
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : (map['crashConsistentFrequencyInMinutes'] as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      multiVmSyncStatus: (map['multiVmSyncStatus'] as String).input(),
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : (map['recoveryPointHistory'] as int).input(),
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : (map['recoveryPointThresholdInMinutes'] as int).input(),
    );
  }
}

