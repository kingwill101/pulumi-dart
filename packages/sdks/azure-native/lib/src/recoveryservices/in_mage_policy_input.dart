// ignore_for_file: unused_element, unnecessary_cast


/// VMWare Azure specific protection profile Input.
class InMagePolicyInput {
  /// The app consistent snapshot frequency (in minutes).
  final int? appConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'InMage'.
  final String instanceType;
  /// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  final String multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final int? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final int? recoveryPointThresholdInMinutes;

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
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
      multiVmSyncStatus: map['multiVmSyncStatus'] as String,
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : map['recoveryPointHistory'] as int,
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : map['recoveryPointThresholdInMinutes'] as int,
    );
  }
}

