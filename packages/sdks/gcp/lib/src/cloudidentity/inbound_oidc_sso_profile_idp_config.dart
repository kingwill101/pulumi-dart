// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundOidcSsoProfileIdpConfig {
  /// The **Change Password URL** of the identity provider. Users will be sent to this URL
  /// when changing their passwords at `myaccount.google.com`. This takes precedence over
  /// the change password URL configured at customer-level. Must use `HTTPS`.
  final pulumi.Input<String?>? changePasswordUri;
  /// The Issuer identifier for the IdP. Must be a URL. The discovery URL will be derived
  /// from this as described in Section 4 of the OIDC specification.
  final pulumi.Input<String> issuerUri;

  /// Creates a new [InboundOidcSsoProfileIdpConfig].
  /// [changePasswordUri] The **Change Password URL** of the identity provider. Users will be sent to this URL
  /// [issuerUri] The Issuer identifier for the IdP. Must be a URL. The discovery URL will be derived
  const InboundOidcSsoProfileIdpConfig({
    this.changePasswordUri,
    required this.issuerUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changePasswordUri': ?changePasswordUri,
      'issuerUri': issuerUri,
    };
  }

  factory InboundOidcSsoProfileIdpConfig.fromMap(Map<String, dynamic> map) {
    return InboundOidcSsoProfileIdpConfig(
      changePasswordUri: (() { final guardedValue = map['changePasswordUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerUri: pulumi.Input.fromValue(map['issuerUri'] as String),
    );
  }
}
