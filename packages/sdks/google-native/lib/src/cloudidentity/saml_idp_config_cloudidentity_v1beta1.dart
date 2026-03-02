// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SAML IDP (identity provider) configuration.
class SamlIdpConfigCloudidentityV1beta1 {
  /// The **Change Password URL** of the identity provider. Users will be sent to this URL when changing their passwords at `myaccount.google.com`. This takes precedence over the change password URL configured at customer-level. Must use `HTTPS`.
  final pulumi.Input<String>? changePasswordUri;
  /// The SAML **Entity ID** of the identity provider.
  final pulumi.Input<String> entityId;
  /// The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user clicks the sign-out link on a Google page, they will be redirected to this URL. This is a pure redirect with no attached SAML `LogoutRequest` i.e. SAML single logout is not supported. Must use `HTTPS`.
  final pulumi.Input<String>? logoutRedirectUri;
  /// The `SingleSignOnService` endpoint location (sign-in page URL) of the identity provider. This is the URL where the `AuthnRequest` will be sent. Must use `HTTPS`. Assumed to accept the `HTTP-Redirect` binding.
  final pulumi.Input<String> singleSignOnServiceUri;

  /// Creates a new [SamlIdpConfigCloudidentityV1beta1].
  /// [changePasswordUri] The **Change Password URL** of the identity provider. Users will be sent to this URL when changing their passwords at `myaccount.google.com`. This takes precedence over the change password URL configured at customer-level. Must use `HTTPS`.
  /// [entityId] The SAML **Entity ID** of the identity provider.
  /// [logoutRedirectUri] The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user clicks the sign-out link on a Google page, they will be redirected to this URL. This is a pure redirect with no attached SAML `LogoutRequest` i.e. SAML single logout is not supported. Must use `HTTPS`.
  /// [singleSignOnServiceUri] The `SingleSignOnService` endpoint location (sign-in page URL) of the identity provider. This is the URL where the `AuthnRequest` will be sent. Must use `HTTPS`. Assumed to accept the `HTTP-Redirect` binding.
  SamlIdpConfigCloudidentityV1beta1({
    this.changePasswordUri,
    required this.entityId,
    this.logoutRedirectUri,
    required this.singleSignOnServiceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changePasswordUri': ?changePasswordUri,
      'entityId': entityId,
      'logoutRedirectUri': ?logoutRedirectUri,
      'singleSignOnServiceUri': singleSignOnServiceUri,
    };
  }

  factory SamlIdpConfigCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return SamlIdpConfigCloudidentityV1beta1(
      changePasswordUri: map['changePasswordUri'] == null ? null : (map['changePasswordUri'] as String).input(),
      entityId: (map['entityId'] as String).input(),
      logoutRedirectUri: map['logoutRedirectUri'] == null ? null : (map['logoutRedirectUri'] as String).input(),
      singleSignOnServiceUri: (map['singleSignOnServiceUri'] as String).input(),
    );
  }
}

