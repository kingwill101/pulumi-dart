// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the partner that created the assessment
class SecurityAssessmentMetadataPartnerData {
  /// Name of the company of the partner
  final pulumi.Input<String> partnerName;
  /// Name of the product of the partner that created the assessment
  final pulumi.Input<String>? productName;
  /// Secret to authenticate the partner and verify it created the assessment - write only
  final pulumi.Input<String> secret;

  /// Creates a new [SecurityAssessmentMetadataPartnerData].
  /// [partnerName] Name of the company of the partner
  /// [productName] Name of the product of the partner that created the assessment
  /// [secret] Secret to authenticate the partner and verify it created the assessment - write only
  const SecurityAssessmentMetadataPartnerData({
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

  factory SecurityAssessmentMetadataPartnerData.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPartnerData(
      partnerName: pulumi.Input.fromValue(map['partnerName'] as String),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
