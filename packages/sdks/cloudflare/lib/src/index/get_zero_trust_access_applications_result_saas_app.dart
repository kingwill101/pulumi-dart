// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_saas_app_custom_attribute.dart';
import 'get_zero_trust_access_applications_result_saas_app_custom_claim.dart';
import 'get_zero_trust_access_applications_result_saas_app_hybrid_and_implicit_options.dart';
import 'get_zero_trust_access_applications_result_saas_app_refresh_token_options.dart';

class GetZeroTrustAccessApplicationsResultSaasApp {
  /// The lifetime of the OIDC Access Token after creation. Valid units are m,h. Must be greater than or equal to 1m and less than or equal to 24h.
  final pulumi.Input<String> accessTokenLifetime;
  /// If client secret should be required on the token endpoint when authorization*code*with_pkce grant is used.
  final pulumi.Input<bool> allowPkceWithoutClientSecret;
  /// The URL where this applications tile redirects users
  final pulumi.Input<String> appLauncherUrl;
  /// Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
  /// Available values: "saml", "oidc".
  final pulumi.Input<String> authType;
  /// The application client id
  final pulumi.Input<String> clientId;
  /// The application client secret, only returned on POST request.
  final pulumi.Input<String> clientSecret;
  /// The service provider's endpoint that is responsible for receiving and parsing a SAML assertion.
  final pulumi.Input<String> consumerServiceUrl;
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute>> customAttributes;
  final pulumi.Input<List<GetZeroTrustAccessApplicationsResultSaasAppCustomClaim>> customClaims;
  /// The URL that the user will be redirected to after a successful login for IDP initiated logins.
  final pulumi.Input<String> defaultRelayState;
  /// The OIDC flows supported by this application
  final pulumi.Input<List<String>> grantTypes;
  /// A regex to filter Cloudflare groups returned in ID token and userinfo endpoint
  final pulumi.Input<String> groupFilterRegex;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultSaasAppHybridAndImplicitOptions> hybridAndImplicitOptions;
  /// The unique identifier for your SaaS application.
  final pulumi.Input<String> idpEntityId;
  /// The format of the name identifier sent to the SaaS application.
  /// Available values: "id", "email".
  final pulumi.Input<String> nameIdFormat;
  /// A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `nameIdFormat` setting.
  final pulumi.Input<String> nameIdTransformJsonata;
  /// The Access public certificate that will be used to verify your identity.
  final pulumi.Input<String> publicKey;
  /// The permitted URL's for Cloudflare to return Authorization codes and Access/ID tokens
  final pulumi.Input<List<String>> redirectUris;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions> refreshTokenOptions;
  /// A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into attribute assertions in the SAML response. The expression can transform id, email, name, and groups values. It can also transform fields listed in the saml*attributes or oidc*fields of the identity provider used to authenticate. The output of this expression must be a JSON object.
  final pulumi.Input<String> samlAttributeTransformJsonata;
  /// Define the user information shared with access, "offlineAccess" scope will be automatically enabled if refresh tokens are enabled
  final pulumi.Input<List<String>> scopes;
  /// A globally unique name for an identity or service provider.
  final pulumi.Input<String> spEntityId;
  /// The endpoint where your SaaS application will send login requests.
  final pulumi.Input<String> ssoEndpoint;

  /// Creates a new [GetZeroTrustAccessApplicationsResultSaasApp].
  /// [accessTokenLifetime] The lifetime of the OIDC Access Token after creation. Valid units are m,h. Must be greater than or equal to 1m and less than or equal to 24h.
  /// [allowPkceWithoutClientSecret] If client secret should be required on the token endpoint when authorization*code*with_pkce grant is used.
  /// [appLauncherUrl] The URL where this applications tile redirects users
  /// [authType] Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
  /// [clientId] The application client id
  /// [clientSecret] The application client secret, only returned on POST request.
  /// [consumerServiceUrl] The service provider's endpoint that is responsible for receiving and parsing a SAML assertion.
  /// [customAttributes] Required.
  /// [customClaims] Required.
  /// [defaultRelayState] The URL that the user will be redirected to after a successful login for IDP initiated logins.
  /// [grantTypes] The OIDC flows supported by this application
  /// [groupFilterRegex] A regex to filter Cloudflare groups returned in ID token and userinfo endpoint
  /// [hybridAndImplicitOptions] Required.
  /// [idpEntityId] The unique identifier for your SaaS application.
  /// [nameIdFormat] The format of the name identifier sent to the SaaS application.
  /// [nameIdTransformJsonata] A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `nameIdFormat` setting.
  /// [publicKey] The Access public certificate that will be used to verify your identity.
  /// [redirectUris] The permitted URL's for Cloudflare to return Authorization codes and Access/ID tokens
  /// [refreshTokenOptions] Required.
  /// [samlAttributeTransformJsonata] A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into attribute assertions in the SAML response. The expression can transform id, email, name, and groups values. It can also transform fields listed in the saml*attributes or oidc*fields of the identity provider used to authenticate. The output of this expression must be a JSON object.
  /// [scopes] Define the user information shared with access, "offlineAccess" scope will be automatically enabled if refresh tokens are enabled
  /// [spEntityId] A globally unique name for an identity or service provider.
  /// [ssoEndpoint] The endpoint where your SaaS application will send login requests.
  const GetZeroTrustAccessApplicationsResultSaasApp({
    required this.accessTokenLifetime,
    required this.allowPkceWithoutClientSecret,
    required this.appLauncherUrl,
    required this.authType,
    required this.clientId,
    required this.clientSecret,
    required this.consumerServiceUrl,
    required this.customAttributes,
    required this.customClaims,
    required this.defaultRelayState,
    required this.grantTypes,
    required this.groupFilterRegex,
    required this.hybridAndImplicitOptions,
    required this.idpEntityId,
    required this.nameIdFormat,
    required this.nameIdTransformJsonata,
    required this.publicKey,
    required this.redirectUris,
    required this.refreshTokenOptions,
    required this.samlAttributeTransformJsonata,
    required this.scopes,
    required this.spEntityId,
    required this.ssoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenLifetime': accessTokenLifetime,
      'allowPkceWithoutClientSecret': allowPkceWithoutClientSecret,
      'appLauncherUrl': appLauncherUrl,
      'authType': authType,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'consumerServiceUrl': consumerServiceUrl,
      'customAttributes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute>, List<Map<String, dynamic>>>(customAttributes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customClaims': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationsResultSaasAppCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultRelayState': defaultRelayState,
      'grantTypes': grantTypes,
      'groupFilterRegex': groupFilterRegex,
      'hybridAndImplicitOptions': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultSaasAppHybridAndImplicitOptions, Map<String, dynamic>>(hybridAndImplicitOptions, (value) => value.toMap()),
      'idpEntityId': idpEntityId,
      'nameIdFormat': nameIdFormat,
      'nameIdTransformJsonata': nameIdTransformJsonata,
      'publicKey': publicKey,
      'redirectUris': redirectUris,
      'refreshTokenOptions': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions, Map<String, dynamic>>(refreshTokenOptions, (value) => value.toMap()),
      'samlAttributeTransformJsonata': samlAttributeTransformJsonata,
      'scopes': scopes,
      'spEntityId': spEntityId,
      'ssoEndpoint': ssoEndpoint,
    };
  }

  factory GetZeroTrustAccessApplicationsResultSaasApp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultSaasApp(
      accessTokenLifetime: pulumi.Input.fromValue(map['accessTokenLifetime'] as String),
      allowPkceWithoutClientSecret: pulumi.Input.fromValue(map['allowPkceWithoutClientSecret'] as bool),
      appLauncherUrl: pulumi.Input.fromValue(map['appLauncherUrl'] as String),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      consumerServiceUrl: pulumi.Input.fromValue(map['consumerServiceUrl'] as String),
      customAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute>(map['customAttributes']!, (value) => GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      customClaims: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResultSaasAppCustomClaim>(map['customClaims']!, (value) => GetZeroTrustAccessApplicationsResultSaasAppCustomClaim.fromMap((value as Map).cast<String, dynamic>()))),
      defaultRelayState: pulumi.Input.fromValue(map['defaultRelayState'] as String),
      grantTypes: pulumi.Input.fromValue((map['grantTypes'] as List).cast<String>()),
      groupFilterRegex: pulumi.Input.fromValue(map['groupFilterRegex'] as String),
      hybridAndImplicitOptions: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultSaasAppHybridAndImplicitOptions.fromMap((map['hybridAndImplicitOptions']! as Map).cast<String, dynamic>())),
      idpEntityId: pulumi.Input.fromValue(map['idpEntityId'] as String),
      nameIdFormat: pulumi.Input.fromValue(map['nameIdFormat'] as String),
      nameIdTransformJsonata: pulumi.Input.fromValue(map['nameIdTransformJsonata'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
      refreshTokenOptions: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions.fromMap((map['refreshTokenOptions']! as Map).cast<String, dynamic>())),
      samlAttributeTransformJsonata: pulumi.Input.fromValue(map['samlAttributeTransformJsonata'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      spEntityId: pulumi.Input.fromValue(map['spEntityId'] as String),
      ssoEndpoint: pulumi.Input.fromValue(map['ssoEndpoint'] as String),
    );
  }
}
