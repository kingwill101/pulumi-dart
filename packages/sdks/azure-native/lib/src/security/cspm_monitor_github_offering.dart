// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM monitoring for github offering
class CspmMonitorGithubOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGithub'.
  final String offeringType;

  /// Creates a new [CspmMonitorGithubOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorGithubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGithubOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGithubOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

