// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMage specific protection profile details.
class InMagePolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMage'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether multi-VM sync has to be enabled.
  final pulumi.Input<String>? multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final pulumi.Input<int>? recoveryPointThresholdInMinutes;

  /// Creates a new [InMagePolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  InMagePolicyDetailsResponse({
    this.appConsistentFrequencyInMinutes,
    required this.instanceType,
    this.multiVmSyncStatus,
    this.recoveryPointHistory,
    this.recoveryPointThresholdInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
      'recoveryPointThresholdInMinutes': ?recoveryPointThresholdInMinutes,
    };
  }

  factory InMagePolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMagePolicyDetailsResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : (map['appConsistentFrequencyInMinutes']! as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : (map['multiVmSyncStatus']! as String).input(),
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : (map['recoveryPointHistory']! as int).input(),
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : (map['recoveryPointThresholdInMinutes']! as int).input(),
    );
  }
}

