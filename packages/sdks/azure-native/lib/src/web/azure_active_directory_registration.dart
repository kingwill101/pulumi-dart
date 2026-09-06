// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Azure Active Directory app registration.
class AzureActiveDirectoryRegistration {
  /// The Client ID of this relying party application, known as the client_id.
  /// This setting is required for enabling OpenID Connection authentication with Azure Active Directory or
  /// other 3rd party OpenID Connect providers.
  /// More information on OpenID Connect: http://openid.net/specs/openid-connect-core-1_0.html
  final pulumi.Input<String?>? clientId;
  /// An alternative to the client secret thumbprint, that is the issuer of a certificate used for signing purposes. This property acts as
  /// a replacement for the Client Secret Certificate Thumbprint. It is also optional.
  final pulumi.Input<String?>? clientSecretCertificateIssuer;
  /// An alternative to the client secret thumbprint, that is the subject alternative name of a certificate used for signing purposes. This property acts as
  /// a replacement for the Client Secret Certificate Thumbprint. It is also optional.
  final pulumi.Input<String?>? clientSecretCertificateSubjectAlternativeName;
  /// An alternative to the client secret, that is the thumbprint of a certificate used for signing purposes. This property acts as
  /// a replacement for the Client Secret. It is also optional.
  final pulumi.Input<String?>? clientSecretCertificateThumbprint;
  /// The app setting name that contains the client secret of the relying party application.
  final pulumi.Input<String?>? clientSecretSettingName;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application.
  /// When using Azure Active Directory, this value is the URI of the directory tenant, e.g. `https://login.microsoftonline.com/v2.0/{tenant-guid}/`.
  /// This URI is a case-sensitive identifier for the token issuer.
  /// More information on OpenID Connect Discovery: http://openid.net/specs/openid-connect-discovery-1_0.html
  final pulumi.Input<String?>? openIdIssuer;

  /// Creates a new [AzureActiveDirectoryRegistration].
  /// [clientId] The Client ID of this relying party application, known as the client_id.
  /// [clientSecretCertificateIssuer] An alternative to the client secret thumbprint, that is the issuer of a certificate used for signing purposes. This property acts as
  /// [clientSecretCertificateSubjectAlternativeName] An alternative to the client secret thumbprint, that is the subject alternative name of a certificate used for signing purposes. This property acts as
  /// [clientSecretCertificateThumbprint] An alternative to the client secret, that is the thumbprint of a certificate used for signing purposes. This property acts as
  /// [clientSecretSettingName] The app setting name that contains the client secret of the relying party application.
  /// [openIdIssuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this application.
  const AzureActiveDirectoryRegistration({
    this.clientId,
    this.clientSecretCertificateIssuer,
    this.clientSecretCertificateSubjectAlternativeName,
    this.clientSecretCertificateThumbprint,
    this.clientSecretSettingName,
    this.openIdIssuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretCertificateIssuer': ?clientSecretCertificateIssuer,
      'clientSecretCertificateSubjectAlternativeName': ?clientSecretCertificateSubjectAlternativeName,
      'clientSecretCertificateThumbprint': ?clientSecretCertificateThumbprint,
      'clientSecretSettingName': ?clientSecretSettingName,
      'openIdIssuer': ?openIdIssuer,
    };
  }

  factory AzureActiveDirectoryRegistration.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryRegistration(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretCertificateIssuer: (() { final guardedValue = map['clientSecretCertificateIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretCertificateSubjectAlternativeName: (() { final guardedValue = map['clientSecretCertificateSubjectAlternativeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretCertificateThumbprint: (() { final guardedValue = map['clientSecretCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openIdIssuer: (() { final guardedValue = map['openIdIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
