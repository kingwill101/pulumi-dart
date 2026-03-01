// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM (Cloud security posture management) monitoring for gitlab offering
class CspmMonitorGitLabOfferingResponse {
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGitLab'.
  final String offeringType;

  /// Creates a new [CspmMonitorGitLabOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  CspmMonitorGitLabOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGitLabOfferingResponse.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGitLabOfferingResponse(
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
    );
  }
}

