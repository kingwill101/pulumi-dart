// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm policy creation input.
class InMageRcmPolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final pulumi.Input<int?>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int?>? crashConsistentFrequencyInMinutes;
  /// A value indicating whether multi-VM sync has to be enabled.
  final pulumi.Input<String?>? enableMultiVmSync;
  /// The class type.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The duration in minutes until which the recovery points need to be stored.
  final pulumi.Input<int?>? recoveryPointHistoryInMinutes;

  /// Creates a new [InMageRcmPolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [enableMultiVmSync] A value indicating whether multi-VM sync has to be enabled.
  /// [instanceType] The class type.
  /// [recoveryPointHistoryInMinutes] The duration in minutes until which the recovery points need to be stored.
  const InMageRcmPolicyCreationInput({
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

  factory InMageRcmPolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmPolicyCreationInput(
      appConsistentFrequencyInMinutes: (() { final guardedValue = map['appConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      crashConsistentFrequencyInMinutes: (() { final guardedValue = map['crashConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      enableMultiVmSync: (() { final guardedValue = map['enableMultiVmSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      recoveryPointHistoryInMinutes: (() { final guardedValue = map['recoveryPointHistoryInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
