// ignore_for_file: unused_element, unnecessary_cast


/// Describes the partner that created the assessment
class SecurityAssessmentMetadataPartnerDataResponse {
  /// Name of the company of the partner
  final String partnerName;
  /// Name of the product of the partner that created the assessment
  final String? productName;
  /// Secret to authenticate the partner and verify it created the assessment - write only
  final String secret;

  /// Creates a new [SecurityAssessmentMetadataPartnerDataResponse].
  /// [partnerName] Name of the company of the partner
  /// [productName] Name of the product of the partner that created the assessment
  /// [secret] Secret to authenticate the partner and verify it created the assessment - write only
  SecurityAssessmentMetadataPartnerDataResponse({
    required this.partnerName,
    this.productName,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerName': partnerName,
      'productName': ?productName,
      'secret': secret,
    };
  }

  factory SecurityAssessmentMetadataPartnerDataResponse.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPartnerDataResponse(
      partnerName: map['partnerName'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
      secret: map['secret'] as String,
    );
  }
}

