// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_saas_app_custom_attribute.dart';
import 'access_application_saas_app_custom_claim.dart';
import 'access_application_saas_app_hybrid_and_implicit_options.dart';
import 'access_application_saas_app_refresh_token_options.dart';

class AccessApplicationSaasApp {
  /// The lifetime of the OIDC Access Token after creation. Valid units are m,h. Must be greater than or equal to 1m and less than or equal to 24h.
  final pulumi.Input<String?>? accessTokenLifetime;
  /// If client secret should be required on the token endpoint when authorization*code*with_pkce grant is used.
  final pulumi.Input<bool?>? allowPkceWithoutClientSecret;
  /// The URL where this applications tile redirects users
  final pulumi.Input<String?>? appLauncherUrl;
  /// Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
  /// Available values: "saml", "oidc".
  final pulumi.Input<String?>? authType;
  /// The application client id
  final pulumi.Input<String?>? clientId;
  /// The application client secret, only returned on POST request.
  final pulumi.Input<String?>? clientSecret;
  /// The service provider's endpoint that is responsible for receiving and parsing a SAML assertion.
  final pulumi.Input<String?>? consumerServiceUrl;
  final pulumi.Input<List<AccessApplicationSaasAppCustomAttribute>?>? customAttributes;
  final pulumi.Input<List<AccessApplicationSaasAppCustomClaim>?>? customClaims;
  /// The URL that the user will be redirected to after a successful login for IDP initiated logins.
  final pulumi.Input<String?>? defaultRelayState;
  /// The OIDC flows supported by this application
  final pulumi.Input<List<String>?>? grantTypes;
  /// A regex to filter Cloudflare groups returned in ID token and userinfo endpoint
  final pulumi.Input<String?>? groupFilterRegex;
  final pulumi.Input<AccessApplicationSaasAppHybridAndImplicitOptions?>? hybridAndImplicitOptions;
  /// The unique identifier for your SaaS application.
  final pulumi.Input<String?>? idpEntityId;
  /// The format of the name identifier sent to the SaaS application.
  /// Available values: "id", "email".
  final pulumi.Input<String?>? nameIdFormat;
  /// A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `nameIdFormat` setting.
  final pulumi.Input<String?>? nameIdTransformJsonata;
  /// The Access public certificate that will be used to verify your identity.
  final pulumi.Input<String?>? publicKey;
  /// The permitted URL's for Cloudflare to return Authorization codes and Access/ID tokens
  final pulumi.Input<List<String>?>? redirectUris;
  final pulumi.Input<AccessApplicationSaasAppRefreshTokenOptions?>? refreshTokenOptions;
  /// A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into attribute assertions in the SAML response. The expression can transform id, email, name, and groups values. It can also transform fields listed in the saml*attributes or oidc*fields of the identity provider used to authenticate. The output of this expression must be a JSON object.
  final pulumi.Input<String?>? samlAttributeTransformJsonata;
  /// Define the user information shared with access, "offlineAccess" scope will be automatically enabled if refresh tokens are enabled
  final pulumi.Input<List<String>?>? scopes;
  /// A globally unique name for an identity or service provider.
  final pulumi.Input<String?>? spEntityId;
  /// The endpoint where your SaaS application will send login requests.
  final pulumi.Input<String?>? ssoEndpoint;

  /// Creates a new [AccessApplicationSaasApp].
  /// [accessTokenLifetime] The lifetime of the OIDC Access Token after creation. Valid units are m,h. Must be greater than or equal to 1m and less than or equal to 24h.
  /// [allowPkceWithoutClientSecret] If client secret should be required on the token endpoint when authorization*code*with_pkce grant is used.
  /// [appLauncherUrl] The URL where this applications tile redirects users
  /// [authType] Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
  /// [clientId] The application client id
  /// [clientSecret] The application client secret, only returned on POST request.
  /// [consumerServiceUrl] The service provider's endpoint that is responsible for receiving and parsing a SAML assertion.
  /// [customAttributes] Optional.
  /// [customClaims] Optional.
  /// [defaultRelayState] The URL that the user will be redirected to after a successful login for IDP initiated logins.
  /// [grantTypes] The OIDC flows supported by this application
  /// [groupFilterRegex] A regex to filter Cloudflare groups returned in ID token and userinfo endpoint
  /// [hybridAndImplicitOptions] Optional.
  /// [idpEntityId] The unique identifier for your SaaS application.
  /// [nameIdFormat] The format of the name identifier sent to the SaaS application.
  /// [nameIdTransformJsonata] A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `nameIdFormat` setting.
  /// [publicKey] The Access public certificate that will be used to verify your identity.
  /// [redirectUris] The permitted URL's for Cloudflare to return Authorization codes and Access/ID tokens
  /// [refreshTokenOptions] Optional.
  /// [samlAttributeTransformJsonata] A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into attribute assertions in the SAML response. The expression can transform id, email, name, and groups values. It can also transform fields listed in the saml*attributes or oidc*fields of the identity provider used to authenticate. The output of this expression must be a JSON object.
  /// [scopes] Define the user information shared with access, "offlineAccess" scope will be automatically enabled if refresh tokens are enabled
  /// [spEntityId] A globally unique name for an identity or service provider.
  /// [ssoEndpoint] The endpoint where your SaaS application will send login requests.
  const AccessApplicationSaasApp({
    this.accessTokenLifetime,
    this.allowPkceWithoutClientSecret,
    this.appLauncherUrl,
    this.authType,
    this.clientId,
    this.clientSecret,
    this.consumerServiceUrl,
    this.customAttributes,
    this.customClaims,
    this.defaultRelayState,
    this.grantTypes,
    this.groupFilterRegex,
    this.hybridAndImplicitOptions,
    this.idpEntityId,
    this.nameIdFormat,
    this.nameIdTransformJsonata,
    this.publicKey,
    this.redirectUris,
    this.refreshTokenOptions,
    this.samlAttributeTransformJsonata,
    this.scopes,
    this.spEntityId,
    this.ssoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenLifetime': ?accessTokenLifetime,
      'allowPkceWithoutClientSecret': ?allowPkceWithoutClientSecret,
      'appLauncherUrl': ?appLauncherUrl,
      'authType': ?authType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'consumerServiceUrl': ?consumerServiceUrl,
      'customAttributes': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationSaasAppCustomAttribute>, List<Map<String, dynamic>>>(customAttributes, (value) => pulumi.Input.encodeList<AccessApplicationSaasAppCustomAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customClaims': ?pulumi.Input.mapOptionalInputValue<List<AccessApplicationSaasAppCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<AccessApplicationSaasAppCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultRelayState': ?defaultRelayState,
      'grantTypes': ?grantTypes,
      'groupFilterRegex': ?groupFilterRegex,
      'hybridAndImplicitOptions': ?pulumi.Input.mapOptionalInputValue<AccessApplicationSaasAppHybridAndImplicitOptions, Map<String, dynamic>>(hybridAndImplicitOptions, (value) => value.toMap()),
      'idpEntityId': ?idpEntityId,
      'nameIdFormat': ?nameIdFormat,
      'nameIdTransformJsonata': ?nameIdTransformJsonata,
      'publicKey': ?publicKey,
      'redirectUris': ?redirectUris,
      'refreshTokenOptions': ?pulumi.Input.mapOptionalInputValue<AccessApplicationSaasAppRefreshTokenOptions, Map<String, dynamic>>(refreshTokenOptions, (value) => value.toMap()),
      'samlAttributeTransformJsonata': ?samlAttributeTransformJsonata,
      'scopes': ?scopes,
      'spEntityId': ?spEntityId,
      'ssoEndpoint': ?ssoEndpoint,
    };
  }

  factory AccessApplicationSaasApp.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasApp(
      accessTokenLifetime: (() { final guardedValue = map['accessTokenLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowPkceWithoutClientSecret: (() { final guardedValue = map['allowPkceWithoutClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appLauncherUrl: (() { final guardedValue = map['appLauncherUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerServiceUrl: (() { final guardedValue = map['consumerServiceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customAttributes: (() { final guardedValue = map['customAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationSaasAppCustomAttribute>(guardedValue, (value) => AccessApplicationSaasAppCustomAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customClaims: (() { final guardedValue = map['customClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessApplicationSaasAppCustomClaim>(guardedValue, (value) => AccessApplicationSaasAppCustomClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultRelayState: (() { final guardedValue = map['defaultRelayState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantTypes: (() { final guardedValue = map['grantTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupFilterRegex: (() { final guardedValue = map['groupFilterRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridAndImplicitOptions: (() { final guardedValue = map['hybridAndImplicitOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationSaasAppHybridAndImplicitOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idpEntityId: (() { final guardedValue = map['idpEntityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameIdFormat: (() { final guardedValue = map['nameIdFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameIdTransformJsonata: (() { final guardedValue = map['nameIdTransformJsonata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      refreshTokenOptions: (() { final guardedValue = map['refreshTokenOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationSaasAppRefreshTokenOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samlAttributeTransformJsonata: (() { final guardedValue = map['samlAttributeTransformJsonata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spEntityId: (() { final guardedValue = map['spEntityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoEndpoint: (() { final guardedValue = map['ssoEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
