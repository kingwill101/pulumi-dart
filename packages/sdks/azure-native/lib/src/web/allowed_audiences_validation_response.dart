// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Allowed Audiences validation flow.
class AllowedAudiencesValidationResponse {
  /// The configuration settings of the allowed list of audiences from which to validate the JWT token.
  final pulumi.Input<List<String>>? allowedAudiences;

  /// Creates a new [AllowedAudiencesValidationResponse].
  /// [allowedAudiences] The configuration settings of the allowed list of audiences from which to validate the JWT token.
  AllowedAudiencesValidationResponse({
    this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
    };
  }

  factory AllowedAudiencesValidationResponse.fromMap(Map<String, dynamic> map) {
    return AllowedAudiencesValidationResponse(
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences'] as List).cast<String>()).input(),
    );
  }
}

