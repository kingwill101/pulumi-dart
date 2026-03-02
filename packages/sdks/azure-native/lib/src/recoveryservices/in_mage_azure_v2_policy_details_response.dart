// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMage Azure v2 specific protection profile details.
class InMageAzureV2PolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency in minutes.
  final pulumi.Input<int>? crashConsistentFrequencyInMinutes;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageAzureV2'.
  final pulumi.Input<String> instanceType;
  /// A value indicating whether multi-VM sync has to be enabled.
  final pulumi.Input<String>? multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final pulumi.Input<int>? recoveryPointThresholdInMinutes;

  /// Creates a new [InMageAzureV2PolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency in minutes.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  InMageAzureV2PolicyDetailsResponse({
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

  factory InMageAzureV2PolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2PolicyDetailsResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : (map['appConsistentFrequencyInMinutes']! as int).input(),
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : (map['crashConsistentFrequencyInMinutes']! as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : (map['multiVmSyncStatus']! as String).input(),
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : (map['recoveryPointHistory']! as int).input(),
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : (map['recoveryPointThresholdInMinutes']! as int).input(),
    );
  }
}

