// ignore_for_file: unused_element, unnecessary_cast


/// VMware Cbt policy creation input.
class VMwareCbtPolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final int? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final int? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final String instanceType;
  /// The duration in minutes until which the recovery points need to be stored.
  final int? recoveryPointHistoryInMinutes;

  /// Creates a new [VMwareCbtPolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  /// [recoveryPointHistoryInMinutes] The duration in minutes until which the recovery points need to be stored.
  VMwareCbtPolicyCreationInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    this.recoveryPointHistoryInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'recoveryPointHistoryInMinutes': ?recoveryPointHistoryInMinutes,
    };
  }

  factory VMwareCbtPolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return VMwareCbtPolicyCreationInput(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
      recoveryPointHistoryInMinutes: map['recoveryPointHistoryInMinutes'] == null ? null : map['recoveryPointHistoryInMinutes'] as int,
    );
  }
}

