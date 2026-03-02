// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc_web_sso_config_assertion_claims_behavior.dart';
import 'google_iam_admin_v1_workforce_pool_provider_oidc_web_sso_config_response_type.dart';

/// Configuration for web single sign-on for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig {
  /// Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested. Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  final pulumi.Input<List<String>>? additionalScopes;
  /// The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior> assertionClaimsBehavior;
  /// The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType> responseType;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig].
  /// [additionalScopes] Additional scopes to request for in the OIDC authentication request on top of scopes requested by default. By default, the `openid`, `profile` and `email` scopes that are supported by the identity provider are requested. Each additional scope may be at most 256 characters. A maximum of 10 additional scopes may be configured.
  /// [assertionClaimsBehavior] The behavior for how OIDC Claims are included in the `assertion` object used for attribute mapping and attribute condition.
  /// [responseType] The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
  GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig({
    this.additionalScopes,
    required this.assertionClaimsBehavior,
    required this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalScopes': ?additionalScopes,
      'assertionClaimsBehavior': pulumi.Input.mapInputValue<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior, String>(assertionClaimsBehavior, (value) => value.value),
      'responseType': pulumi.Input.mapInputValue<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType, String>(responseType, (value) => value.value),
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig(
      additionalScopes: map['additionalScopes'] == null ? null : ((map['additionalScopes']! as List).cast<String>()).input(),
      assertionClaimsBehavior: (GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior.fromValue(map['assertionClaimsBehavior'] as String)).input(),
      responseType: (GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType.fromValue(map['responseType'] as String)).input(),
    );
  }
}

