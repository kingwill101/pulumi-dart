// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the partner that created the assessment
class SecurityAssessmentMetadataPartnerDataResponse {
  /// Name of the company of the partner
  final pulumi.Input<String> partnerName;
  /// Name of the product of the partner that created the assessment
  final pulumi.Input<String>? productName;
  /// Secret to authenticate the partner and verify it created the assessment - write only
  final pulumi.Input<String> secret;

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
      partnerName: (map['partnerName'] as String).input(),
      productName: map['productName'] == null ? null : (map['productName']! as String).input(),
      secret: (map['secret'] as String).input(),
    );
  }
}

