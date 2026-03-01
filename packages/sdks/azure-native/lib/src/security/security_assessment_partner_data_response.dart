// ignore_for_file: unused_element, unnecessary_cast


/// Data regarding 3rd party partner integration
class SecurityAssessmentPartnerDataResponse {
  /// Name of the company of the partner
  final String partnerName;
  /// secret to authenticate the partner - write only
  final String secret;

  /// Creates a new [SecurityAssessmentPartnerDataResponse].
  /// [partnerName] Name of the company of the partner
  /// [secret] secret to authenticate the partner - write only
  SecurityAssessmentPartnerDataResponse({
    required this.partnerName,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerName': partnerName,
      'secret': secret,
    };
  }

  factory SecurityAssessmentPartnerDataResponse.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentPartnerDataResponse(
      partnerName: map['partnerName'] as String,
      secret: map['secret'] as String,
    );
  }
}

