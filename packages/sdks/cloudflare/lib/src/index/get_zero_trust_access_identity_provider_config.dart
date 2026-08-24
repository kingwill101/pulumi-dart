// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_identity_provider_config_header_attribute.dart';

class GetZeroTrustAccessIdentityProviderConfig {
  /// Your companies TLD
  final pulumi.Input<String> appsDomain;
  /// A list of SAML attribute names that will be added to your signed JWT token and can be used in SAML policy rules.
  final pulumi.Input<List<String>> attributes;
  /// The authorizationEndpoint URL of your IdP
  final pulumi.Input<String> authUrl;
  /// Your okta authorization server id
  final pulumi.Input<String> authorizationServerId;
  /// Your centrify account url
  final pulumi.Input<String> centrifyAccount;
  /// Your centrify app id
  final pulumi.Input<String> centrifyAppId;
  /// The jwksUri endpoint of your IdP to allow the IdP keys to sign the tokens
  final pulumi.Input<String> certsUrl;
  /// Custom claims
  final pulumi.Input<List<String>> claims;
  /// Your OAuth Client ID
  final pulumi.Input<String> clientId;
  /// Your OAuth Client Secret
  final pulumi.Input<String> clientSecret;
  /// Should Cloudflare try to load authentication contexts from your account
  final pulumi.Input<bool> conditionalAccessEnabled;
  /// Your Azure directory uuid
  final pulumi.Input<String> directoryId;
  /// The attribute name for email in the SAML response.
  final pulumi.Input<String> emailAttributeName;
  /// The claim name for email in the idToken response.
  final pulumi.Input<String> emailClaimName;
  /// Enable SAML assertion encryption. When enabled, the Identity Provider will encrypt
  /// SAML assertions using the certificate from the assigned certificate set.
  final pulumi.Input<bool> enableEncryption;
  /// Add a list of attribute names that will be returned in the response header from the Access callback.
  final pulumi.Input<List<GetZeroTrustAccessIdentityProviderConfigHeaderAttribute>> headerAttributes;
  /// X509 certificate to verify the signature in the SAML authentication response
  final pulumi.Input<List<String>> idpPublicCerts;
  /// IdP Entity ID or Issuer URL
  final pulumi.Input<String> issuerUrl;
  /// Your okta account url
  final pulumi.Input<String> oktaAccount;
  /// Your OneLogin account url
  final pulumi.Input<String> oneloginAccount;
  /// Your PingOne environment identifier
  final pulumi.Input<String> pingEnvId;
  /// Enable Proof Key for Code Exchange (PKCE)
  final pulumi.Input<bool> pkceEnabled;
  /// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interactionRequired error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
  /// Available values: "login", "selectAccount", "none".
  final pulumi.Input<String> prompt;
  final pulumi.Input<String> redirectUrl;
  /// When enabled, only users who are members of your Cloudflare account can authenticate through this identity provider. When disabled, any user with a Cloudflare account can authenticate, subject to your Access policies.
  final pulumi.Input<bool> restrictToAccountMembers;
  /// OAuth scopes
  final pulumi.Input<List<String>> scopes;
  /// Sign the SAML authentication request with Access credentials. To verify the signature, use the public key from the Access certs endpoints.
  final pulumi.Input<bool> signRequest;
  /// URL to send the SAML authentication requests to
  final pulumi.Input<String> ssoTargetUrl;
  /// Should Cloudflare try to load groups from your account
  final pulumi.Input<bool> supportGroups;
  /// The tokenEndpoint URL of your IdP
  final pulumi.Input<String> tokenUrl;

  /// Creates a new [GetZeroTrustAccessIdentityProviderConfig].
  /// [appsDomain] Your companies TLD
  /// [attributes] A list of SAML attribute names that will be added to your signed JWT token and can be used in SAML policy rules.
  /// [authUrl] The authorizationEndpoint URL of your IdP
  /// [authorizationServerId] Your okta authorization server id
  /// [centrifyAccount] Your centrify account url
  /// [centrifyAppId] Your centrify app id
  /// [certsUrl] The jwksUri endpoint of your IdP to allow the IdP keys to sign the tokens
  /// [claims] Custom claims
  /// [clientId] Your OAuth Client ID
  /// [clientSecret] Your OAuth Client Secret
  /// [conditionalAccessEnabled] Should Cloudflare try to load authentication contexts from your account
  /// [directoryId] Your Azure directory uuid
  /// [emailAttributeName] The attribute name for email in the SAML response.
  /// [emailClaimName] The claim name for email in the idToken response.
  /// [enableEncryption] Enable SAML assertion encryption. When enabled, the Identity Provider will encrypt
  /// [headerAttributes] Add a list of attribute names that will be returned in the response header from the Access callback.
  /// [idpPublicCerts] X509 certificate to verify the signature in the SAML authentication response
  /// [issuerUrl] IdP Entity ID or Issuer URL
  /// [oktaAccount] Your okta account url
  /// [oneloginAccount] Your OneLogin account url
  /// [pingEnvId] Your PingOne environment identifier
  /// [pkceEnabled] Enable Proof Key for Code Exchange (PKCE)
  /// [prompt] Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interactionRequired error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
  /// [redirectUrl] Required.
  /// [restrictToAccountMembers] When enabled, only users who are members of your Cloudflare account can authenticate through this identity provider. When disabled, any user with a Cloudflare account can authenticate, subject to your Access policies.
  /// [scopes] OAuth scopes
  /// [signRequest] Sign the SAML authentication request with Access credentials. To verify the signature, use the public key from the Access certs endpoints.
  /// [ssoTargetUrl] URL to send the SAML authentication requests to
  /// [supportGroups] Should Cloudflare try to load groups from your account
  /// [tokenUrl] The tokenEndpoint URL of your IdP
  const GetZeroTrustAccessIdentityProviderConfig({
    required this.appsDomain,
    required this.attributes,
    required this.authUrl,
    required this.authorizationServerId,
    required this.centrifyAccount,
    required this.centrifyAppId,
    required this.certsUrl,
    required this.claims,
    required this.clientId,
    required this.clientSecret,
    required this.conditionalAccessEnabled,
    required this.directoryId,
    required this.emailAttributeName,
    required this.emailClaimName,
    required this.enableEncryption,
    required this.headerAttributes,
    required this.idpPublicCerts,
    required this.issuerUrl,
    required this.oktaAccount,
    required this.oneloginAccount,
    required this.pingEnvId,
    required this.pkceEnabled,
    required this.prompt,
    required this.redirectUrl,
    required this.restrictToAccountMembers,
    required this.scopes,
    required this.signRequest,
    required this.ssoTargetUrl,
    required this.supportGroups,
    required this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appsDomain': appsDomain,
      'attributes': attributes,
      'authUrl': authUrl,
      'authorizationServerId': authorizationServerId,
      'centrifyAccount': centrifyAccount,
      'centrifyAppId': centrifyAppId,
      'certsUrl': certsUrl,
      'claims': claims,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'conditionalAccessEnabled': conditionalAccessEnabled,
      'directoryId': directoryId,
      'emailAttributeName': emailAttributeName,
      'emailClaimName': emailClaimName,
      'enableEncryption': enableEncryption,
      'headerAttributes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessIdentityProviderConfigHeaderAttribute>, List<Map<String, dynamic>>>(headerAttributes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessIdentityProviderConfigHeaderAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idpPublicCerts': idpPublicCerts,
      'issuerUrl': issuerUrl,
      'oktaAccount': oktaAccount,
      'oneloginAccount': oneloginAccount,
      'pingEnvId': pingEnvId,
      'pkceEnabled': pkceEnabled,
      'prompt': prompt,
      'redirectUrl': redirectUrl,
      'restrictToAccountMembers': restrictToAccountMembers,
      'scopes': scopes,
      'signRequest': signRequest,
      'ssoTargetUrl': ssoTargetUrl,
      'supportGroups': supportGroups,
      'tokenUrl': tokenUrl,
    };
  }

  factory GetZeroTrustAccessIdentityProviderConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderConfig(
      appsDomain: pulumi.Input.fromValue(map['appsDomain'] as String),
      attributes: pulumi.Input.fromValue((map['attributes'] as List).cast<String>()),
      authUrl: pulumi.Input.fromValue(map['authUrl'] as String),
      authorizationServerId: pulumi.Input.fromValue(map['authorizationServerId'] as String),
      centrifyAccount: pulumi.Input.fromValue(map['centrifyAccount'] as String),
      centrifyAppId: pulumi.Input.fromValue(map['centrifyAppId'] as String),
      certsUrl: pulumi.Input.fromValue(map['certsUrl'] as String),
      claims: pulumi.Input.fromValue((map['claims'] as List).cast<String>()),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      conditionalAccessEnabled: pulumi.Input.fromValue(map['conditionalAccessEnabled'] as bool),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      emailAttributeName: pulumi.Input.fromValue(map['emailAttributeName'] as String),
      emailClaimName: pulumi.Input.fromValue(map['emailClaimName'] as String),
      enableEncryption: pulumi.Input.fromValue(map['enableEncryption'] as bool),
      headerAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessIdentityProviderConfigHeaderAttribute>(map['headerAttributes']!, (value) => GetZeroTrustAccessIdentityProviderConfigHeaderAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      idpPublicCerts: pulumi.Input.fromValue((map['idpPublicCerts'] as List).cast<String>()),
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      oktaAccount: pulumi.Input.fromValue(map['oktaAccount'] as String),
      oneloginAccount: pulumi.Input.fromValue(map['oneloginAccount'] as String),
      pingEnvId: pulumi.Input.fromValue(map['pingEnvId'] as String),
      pkceEnabled: pulumi.Input.fromValue(map['pkceEnabled'] as bool),
      prompt: pulumi.Input.fromValue(map['prompt'] as String),
      redirectUrl: pulumi.Input.fromValue(map['redirectUrl'] as String),
      restrictToAccountMembers: pulumi.Input.fromValue(map['restrictToAccountMembers'] as bool),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      signRequest: pulumi.Input.fromValue(map['signRequest'] as bool),
      ssoTargetUrl: pulumi.Input.fromValue(map['ssoTargetUrl'] as String),
      supportGroups: pulumi.Input.fromValue(map['supportGroups'] as bool),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
    );
  }
}
