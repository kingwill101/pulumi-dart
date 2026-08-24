// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_identity_provider_config_header_attribute.dart';

class AccessIdentityProviderConfig {
  /// Your companies TLD
  final pulumi.Input<String?>? appsDomain;
  /// A list of SAML attribute names that will be added to your signed JWT token and can be used in SAML policy rules.
  final pulumi.Input<List<String>?>? attributes;
  /// The authorizationEndpoint URL of your IdP
  final pulumi.Input<String?>? authUrl;
  /// Your okta authorization server id
  final pulumi.Input<String?>? authorizationServerId;
  /// Your centrify account url
  final pulumi.Input<String?>? centrifyAccount;
  /// Your centrify app id
  final pulumi.Input<String?>? centrifyAppId;
  /// The jwksUri endpoint of your IdP to allow the IdP keys to sign the tokens
  final pulumi.Input<String?>? certsUrl;
  /// Custom claims
  final pulumi.Input<List<String>?>? claims;
  /// Your OAuth Client ID
  final pulumi.Input<String?>? clientId;
  /// Your OAuth Client Secret
  final pulumi.Input<String?>? clientSecret;
  /// Should Cloudflare try to load authentication contexts from your account
  final pulumi.Input<bool?>? conditionalAccessEnabled;
  /// Your Azure directory uuid
  final pulumi.Input<String?>? directoryId;
  /// The attribute name for email in the SAML response.
  final pulumi.Input<String?>? emailAttributeName;
  /// The claim name for email in the idToken response.
  final pulumi.Input<String?>? emailClaimName;
  /// Enable SAML assertion encryption. When enabled, the Identity Provider will encrypt
  /// SAML assertions using the certificate from the assigned certificate set.
  final pulumi.Input<bool?>? enableEncryption;
  /// Add a list of attribute names that will be returned in the response header from the Access callback.
  final pulumi.Input<List<AccessIdentityProviderConfigHeaderAttribute>?>? headerAttributes;
  /// X509 certificate to verify the signature in the SAML authentication response
  final pulumi.Input<List<String>?>? idpPublicCerts;
  /// IdP Entity ID or Issuer URL
  final pulumi.Input<String?>? issuerUrl;
  /// Your okta account url
  final pulumi.Input<String?>? oktaAccount;
  /// Your OneLogin account url
  final pulumi.Input<String?>? oneloginAccount;
  /// Your PingOne environment identifier
  final pulumi.Input<String?>? pingEnvId;
  /// Enable Proof Key for Code Exchange (PKCE)
  final pulumi.Input<bool?>? pkceEnabled;
  /// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interactionRequired error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
  /// Available values: "login", "selectAccount", "none".
  final pulumi.Input<String?>? prompt;
  final pulumi.Input<String?>? redirectUrl;
  /// When enabled, only users who are members of your Cloudflare account can authenticate through this identity provider. When disabled, any user with a Cloudflare account can authenticate, subject to your Access policies.
  final pulumi.Input<bool?>? restrictToAccountMembers;
  /// OAuth scopes
  final pulumi.Input<List<String>?>? scopes;
  /// Sign the SAML authentication request with Access credentials. To verify the signature, use the public key from the Access certs endpoints.
  final pulumi.Input<bool?>? signRequest;
  /// URL to send the SAML authentication requests to
  final pulumi.Input<String?>? ssoTargetUrl;
  /// Should Cloudflare try to load groups from your account
  final pulumi.Input<bool?>? supportGroups;
  /// The tokenEndpoint URL of your IdP
  final pulumi.Input<String?>? tokenUrl;

  /// Creates a new [AccessIdentityProviderConfig].
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
  /// [redirectUrl] Optional.
  /// [restrictToAccountMembers] When enabled, only users who are members of your Cloudflare account can authenticate through this identity provider. When disabled, any user with a Cloudflare account can authenticate, subject to your Access policies.
  /// [scopes] OAuth scopes
  /// [signRequest] Sign the SAML authentication request with Access credentials. To verify the signature, use the public key from the Access certs endpoints.
  /// [ssoTargetUrl] URL to send the SAML authentication requests to
  /// [supportGroups] Should Cloudflare try to load groups from your account
  /// [tokenUrl] The tokenEndpoint URL of your IdP
  const AccessIdentityProviderConfig({
    this.appsDomain,
    this.attributes,
    this.authUrl,
    this.authorizationServerId,
    this.centrifyAccount,
    this.centrifyAppId,
    this.certsUrl,
    this.claims,
    this.clientId,
    this.clientSecret,
    this.conditionalAccessEnabled,
    this.directoryId,
    this.emailAttributeName,
    this.emailClaimName,
    this.enableEncryption,
    this.headerAttributes,
    this.idpPublicCerts,
    this.issuerUrl,
    this.oktaAccount,
    this.oneloginAccount,
    this.pingEnvId,
    this.pkceEnabled,
    this.prompt,
    this.redirectUrl,
    this.restrictToAccountMembers,
    this.scopes,
    this.signRequest,
    this.ssoTargetUrl,
    this.supportGroups,
    this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appsDomain': ?appsDomain,
      'attributes': ?attributes,
      'authUrl': ?authUrl,
      'authorizationServerId': ?authorizationServerId,
      'centrifyAccount': ?centrifyAccount,
      'centrifyAppId': ?centrifyAppId,
      'certsUrl': ?certsUrl,
      'claims': ?claims,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'conditionalAccessEnabled': ?conditionalAccessEnabled,
      'directoryId': ?directoryId,
      'emailAttributeName': ?emailAttributeName,
      'emailClaimName': ?emailClaimName,
      'enableEncryption': ?enableEncryption,
      'headerAttributes': ?pulumi.Input.mapOptionalInputValue<List<AccessIdentityProviderConfigHeaderAttribute>, List<Map<String, dynamic>>>(headerAttributes, (value) => pulumi.Input.encodeList<AccessIdentityProviderConfigHeaderAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idpPublicCerts': ?idpPublicCerts,
      'issuerUrl': ?issuerUrl,
      'oktaAccount': ?oktaAccount,
      'oneloginAccount': ?oneloginAccount,
      'pingEnvId': ?pingEnvId,
      'pkceEnabled': ?pkceEnabled,
      'prompt': ?prompt,
      'redirectUrl': ?redirectUrl,
      'restrictToAccountMembers': ?restrictToAccountMembers,
      'scopes': ?scopes,
      'signRequest': ?signRequest,
      'ssoTargetUrl': ?ssoTargetUrl,
      'supportGroups': ?supportGroups,
      'tokenUrl': ?tokenUrl,
    };
  }

  factory AccessIdentityProviderConfig.fromMap(Map<String, dynamic> map) {
    return AccessIdentityProviderConfig(
      appsDomain: (() { final guardedValue = map['appsDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authUrl: (() { final guardedValue = map['authUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationServerId: (() { final guardedValue = map['authorizationServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      centrifyAccount: (() { final guardedValue = map['centrifyAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      centrifyAppId: (() { final guardedValue = map['centrifyAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certsUrl: (() { final guardedValue = map['certsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditionalAccessEnabled: (() { final guardedValue = map['conditionalAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAttributeName: (() { final guardedValue = map['emailAttributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailClaimName: (() { final guardedValue = map['emailClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableEncryption: (() { final guardedValue = map['enableEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headerAttributes: (() { final guardedValue = map['headerAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessIdentityProviderConfigHeaderAttribute>(guardedValue, (value) => AccessIdentityProviderConfigHeaderAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      idpPublicCerts: (() { final guardedValue = map['idpPublicCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      issuerUrl: (() { final guardedValue = map['issuerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oktaAccount: (() { final guardedValue = map['oktaAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oneloginAccount: (() { final guardedValue = map['oneloginAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pingEnvId: (() { final guardedValue = map['pingEnvId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pkceEnabled: (() { final guardedValue = map['pkceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictToAccountMembers: (() { final guardedValue = map['restrictToAccountMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signRequest: (() { final guardedValue = map['signRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssoTargetUrl: (() { final guardedValue = map['ssoTargetUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportGroups: (() { final guardedValue = map['supportGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenUrl: (() { final guardedValue = map['tokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
