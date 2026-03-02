// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm specific policy details.
class InMageRcmPolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final pulumi.Input<int>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency in minutes.
  final pulumi.Input<int>? crashConsistentFrequencyInMinutes;
  /// A value indicating whether multi-VM sync has to be enabled.
  final pulumi.Input<String>? enableMultiVmSync;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointHistoryInMinutes;

  /// Creates a new [InMageRcmPolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency in minutes.
  /// [enableMultiVmSync] A value indicating whether multi-VM sync has to be enabled.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [recoveryPointHistoryInMinutes] The duration in minutes until which the recovery points need to be stored.
  InMageRcmPolicyDetailsResponse({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    this.enableMultiVmSync,
    required this.instanceType,
    this.recoveryPointHistoryInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'enableMultiVmSync': ?enableMultiVmSync,
      'instanceType': instanceType,
      'recoveryPointHistoryInMinutes': ?recoveryPointHistoryInMinutes,
    };
  }

  factory InMageRcmPolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmPolicyDetailsResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : (map['appConsistentFrequencyInMinutes']! as int).input(),
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : (map['crashConsistentFrequencyInMinutes']! as int).input(),
      enableMultiVmSync: map['enableMultiVmSync'] == null ? null : (map['enableMultiVmSync']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      recoveryPointHistoryInMinutes: map['recoveryPointHistoryInMinutes'] == null ? null : (map['recoveryPointHistoryInMinutes']! as int).input(),
    );
  }
}

