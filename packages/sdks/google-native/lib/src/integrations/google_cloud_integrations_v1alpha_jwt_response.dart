// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents JSON web token(JWT), which is a compact, URL-safe means of representing claims to be transferred between two parties, enabling the claims to be digitally signed or integrity protected.
class GoogleCloudIntegrationsV1alphaJwtResponse {
  /// The token calculated by the header, payload and signature.
  final pulumi.Input<String> jwt;
  /// Identifies which algorithm is used to generate the signature.
  final pulumi.Input<String> jwtHeader;
  /// Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  final pulumi.Input<String> jwtPayload;
  /// User's pre-shared secret to sign the token.
  final pulumi.Input<String> secret;

  /// Creates a new [GoogleCloudIntegrationsV1alphaJwtResponse].
  /// [jwt] The token calculated by the header, payload and signature.
  /// [jwtHeader] Identifies which algorithm is used to generate the signature.
  /// [jwtPayload] Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  /// [secret] User's pre-shared secret to sign the token.
  GoogleCloudIntegrationsV1alphaJwtResponse({
    required this.jwt,
    required this.jwtHeader,
    required this.jwtPayload,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwt': jwt,
      'jwtHeader': jwtHeader,
      'jwtPayload': jwtPayload,
      'secret': secret,
    };
  }

  factory GoogleCloudIntegrationsV1alphaJwtResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaJwtResponse(
      jwt: (map['jwt'] as String).input(),
      jwtHeader: (map['jwtHeader'] as String).input(),
      jwtPayload: (map['jwtPayload'] as String).input(),
      secret: (map['secret'] as String).input(),
    );
  }
}

