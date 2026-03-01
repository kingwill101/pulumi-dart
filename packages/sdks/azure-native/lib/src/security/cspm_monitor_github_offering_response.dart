// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM monitoring for github offering
class CspmMonitorGithubOfferingResponse {
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGithub'.
  final String offeringType;

  /// Creates a new [CspmMonitorGithubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  CspmMonitorGithubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGithubOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGithubOfferingResponse(
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
    );
  }
}

