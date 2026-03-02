// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing SAML params to enable Google as IDP.
class SAMLParamsResponse {
  /// SAML certificate
  final pulumi.Input<String> certificate;
  /// IdP field that maps to the user’s email address
  final pulumi.Input<String> emailMapping;
  /// Entity id URL
  final pulumi.Input<String> entityId;
  /// Single sign-on URL
  final pulumi.Input<String> ssoUri;
  /// Email address of the first admin users.
  final pulumi.Input<String> userEmail;

  /// Creates a new [SAMLParamsResponse].
  /// [certificate] SAML certificate
  /// [emailMapping] IdP field that maps to the user’s email address
  /// [entityId] Entity id URL
  /// [ssoUri] Single sign-on URL
  /// [userEmail] Email address of the first admin users.
  SAMLParamsResponse({
    required this.certificate,
    required this.emailMapping,
    required this.entityId,
    required this.ssoUri,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'emailMapping': emailMapping,
      'entityId': entityId,
      'ssoUri': ssoUri,
      'userEmail': userEmail,
    };
  }

  factory SAMLParamsResponse.fromMap(Map<String, dynamic> map) {
    return SAMLParamsResponse(
      certificate: (map['certificate'] as String).input(),
      emailMapping: (map['emailMapping'] as String).input(),
      entityId: (map['entityId'] as String).input(),
      ssoUri: (map['ssoUri'] as String).input(),
      userEmail: (map['userEmail'] as String).input(),
    );
  }
}

