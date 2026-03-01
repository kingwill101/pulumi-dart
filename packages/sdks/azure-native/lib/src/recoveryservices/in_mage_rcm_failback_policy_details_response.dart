// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm failback specific policy details.
class InMageRcmFailbackPolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final int? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency in minutes.
  final int? crashConsistentFrequencyInMinutes;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageRcmFailback'.
  final String instanceType;

  /// Creates a new [InMageRcmFailbackPolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency in minutes.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  InMageRcmFailbackPolicyDetailsResponse({
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

  factory InMageRcmFailbackPolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackPolicyDetailsResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
    );
  }
}

