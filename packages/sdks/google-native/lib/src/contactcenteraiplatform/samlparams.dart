// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing SAML params to enable Google as IDP.
class SAMLParams {
  /// SAML certificate
  final pulumi.Input<String>? certificate;
  /// IdP field that maps to the user’s email address
  final pulumi.Input<String>? emailMapping;
  /// Entity id URL
  final pulumi.Input<String>? entityId;
  /// Single sign-on URL
  final pulumi.Input<String>? ssoUri;
  /// Email address of the first admin users.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [SAMLParams].
  /// [certificate] SAML certificate
  /// [emailMapping] IdP field that maps to the user’s email address
  /// [entityId] Entity id URL
  /// [ssoUri] Single sign-on URL
  /// [userEmail] Email address of the first admin users.
  const SAMLParams({
    this.certificate,
    this.emailMapping,
    this.entityId,
    this.ssoUri,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'emailMapping': ?emailMapping,
      'entityId': ?entityId,
      'ssoUri': ?ssoUri,
      'userEmail': ?userEmail,
    };
  }

  factory SAMLParams.fromMap(Map<String, dynamic> map) {
    return SAMLParams(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailMapping: (() { final guardedValue = map['emailMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoUri: (() { final guardedValue = map['ssoUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

