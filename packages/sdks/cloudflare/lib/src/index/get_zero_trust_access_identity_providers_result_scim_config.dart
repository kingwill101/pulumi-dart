// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessIdentityProvidersResultScimConfig {
  /// A flag to enable or disable SCIM for the identity provider.
  final pulumi.Input<bool> enabled;
  /// Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no*action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
  /// Available values: "automatic", "reauth", "no*action".
  final pulumi.Input<String> identityUpdateBehavior;
  /// The base URL of Cloudflare's SCIM V2.0 API endpoint.
  final pulumi.Input<String> scimBaseUrl;
  /// A flag to remove a user's seat in Zero Trust when they have been deprovisioned in the Identity Provider.  This cannot be enabled unless userDeprovision is also enabled.
  final pulumi.Input<bool> seatDeprovision;
  /// A read-only token generated when the SCIM integration is enabled for the first time.  It is redacted on subsequent requests.  If you lose this you will need to refresh it at /access/identity*providers/:idpID/refresh*scim_secret.
  final pulumi.Input<String> secret;
  /// A flag to enable revoking a user's session in Access and Gateway when they have been deprovisioned in the Identity Provider.
  final pulumi.Input<bool> userDeprovision;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersResultScimConfig].
  /// [enabled] A flag to enable or disable SCIM for the identity provider.
  /// [identityUpdateBehavior] Indicates how a SCIM event updates a user identity used for policy evaluation. Use "automatic" to automatically update a user's identity and augment it with fields from the SCIM user resource. Use "reauth" to force re-authentication on group membership updates, user identity update will only occur after successful re-authentication. With "reauth" identities will not contain fields from the SCIM user resource. With "no*action" identities will not be changed by SCIM updates in any way and users will not be prompted to reauthenticate.
  /// [scimBaseUrl] The base URL of Cloudflare's SCIM V2.0 API endpoint.
  /// [seatDeprovision] A flag to remove a user's seat in Zero Trust when they have been deprovisioned in the Identity Provider.  This cannot be enabled unless userDeprovision is also enabled.
  /// [secret] A read-only token generated when the SCIM integration is enabled for the first time.  It is redacted on subsequent requests.  If you lose this you will need to refresh it at /access/identity*providers/:idpID/refresh*scim_secret.
  /// [userDeprovision] A flag to enable revoking a user's session in Access and Gateway when they have been deprovisioned in the Identity Provider.
  const GetZeroTrustAccessIdentityProvidersResultScimConfig({
    required this.enabled,
    required this.identityUpdateBehavior,
    required this.scimBaseUrl,
    required this.seatDeprovision,
    required this.secret,
    required this.userDeprovision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'identityUpdateBehavior': identityUpdateBehavior,
      'scimBaseUrl': scimBaseUrl,
      'seatDeprovision': seatDeprovision,
      'secret': secret,
      'userDeprovision': userDeprovision,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersResultScimConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersResultScimConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      identityUpdateBehavior: pulumi.Input.fromValue(map['identityUpdateBehavior'] as String),
      scimBaseUrl: pulumi.Input.fromValue(map['scimBaseUrl'] as String),
      seatDeprovision: pulumi.Input.fromValue(map['seatDeprovision'] as bool),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      userDeprovision: pulumi.Input.fromValue(map['userDeprovision'] as bool),
    );
  }
}
