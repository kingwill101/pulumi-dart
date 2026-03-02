// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data regarding 3rd party partner integration
class SecurityAssessmentPartnerData {
  /// Name of the company of the partner
  final pulumi.Input<String> partnerName;
  /// secret to authenticate the partner - write only
  final pulumi.Input<String> secret;

  /// Creates a new [SecurityAssessmentPartnerData].
  /// [partnerName] Name of the company of the partner
  /// [secret] secret to authenticate the partner - write only
  SecurityAssessmentPartnerData({
    required this.partnerName,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerName': partnerName,
      'secret': secret,
    };
  }

  factory SecurityAssessmentPartnerData.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentPartnerData(
      partnerName: (map['partnerName'] as String).input(),
      secret: (map['secret'] as String).input(),
    );
  }
}

