// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcmFailback policy creation input.
class InMageRcmFailbackPolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final pulumi.Input<int?>? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int?>? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'InMageRcmFailback'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [InMageRcmFailbackPolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  const InMageRcmFailbackPolicyCreationInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
    };
  }

  factory InMageRcmFailbackPolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackPolicyCreationInput(
      appConsistentFrequencyInMinutes: (() { final guardedValue = map['appConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      crashConsistentFrequencyInMinutes: (() { final guardedValue = map['crashConsistentFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
