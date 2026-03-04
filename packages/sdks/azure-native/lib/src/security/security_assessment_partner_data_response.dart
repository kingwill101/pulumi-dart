// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data regarding 3rd party partner integration
class SecurityAssessmentPartnerDataResponse {
  /// Name of the company of the partner
  final pulumi.Input<String> partnerName;

  /// secret to authenticate the partner - write only
  final pulumi.Input<String> secret;

  /// Creates a new [SecurityAssessmentPartnerDataResponse].
  /// [partnerName] Name of the company of the partner
  /// [secret] secret to authenticate the partner - write only
  SecurityAssessmentPartnerDataResponse({
    required this.partnerName,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'partnerName': partnerName, 'secret': secret};
  }

  factory SecurityAssessmentPartnerDataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityAssessmentPartnerDataResponse(
      partnerName: pulumi.Input.fromValue(map['partnerName'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
