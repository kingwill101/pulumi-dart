// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotAuthSettingsV2CustomOidcV2 {
  /// The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String>? authorisationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String>? certificationUri;
  /// The Client Credential Method used.
  final pulumi.Input<String>? clientCredentialMethod;
  /// The ID of the Client to use to authenticate with the Custom OIDC.
  final pulumi.Input<String> clientId;
  /// The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
  final pulumi.Input<String>? clientSecretSettingName;
  /// The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String>? issuerEndpoint;
  /// The name of the Custom OIDC Authentication Provider.
  ///
  /// > **Note:** An `app_setting` matching this value in upper case with the suffix of `_PROVIDER_AUTHENTICATION_SECRET` is required. e.g. `MYOIDC_PROVIDER_AUTHENTICATION_SECRET` for a value of `myoidc`.
  final pulumi.Input<String> name;
  /// The name of the claim that contains the users name.
  final pulumi.Input<String>? nameClaimType;
  /// The app setting name that contains the `client_secret` value used for the Custom OIDC Login.
  final pulumi.Input<String> openidConfigurationEndpoint;
  /// The list of the scopes that should be requested while authenticating.
  final pulumi.Input<List<String>>? scopes;
  /// The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [WindowsWebAppSlotAuthSettingsV2CustomOidcV2].
  /// [authorisationEndpoint] The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  /// [clientCredentialMethod] The Client Credential Method used.
  /// [clientId] The ID of the Client to use to authenticate with the Custom OIDC.
  /// [clientSecretSettingName] The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
  /// [issuerEndpoint] The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  /// [name] The name of the Custom OIDC Authentication Provider.
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [openidConfigurationEndpoint] The app setting name that contains the `client_secret` value used for the Custom OIDC Login.
  /// [scopes] The list of the scopes that should be requested while authenticating.
  /// [tokenEndpoint] The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  WindowsWebAppSlotAuthSettingsV2CustomOidcV2({
    this.authorisationEndpoint,
    this.certificationUri,
    this.clientCredentialMethod,
    required this.clientId,
    this.clientSecretSettingName,
    this.issuerEndpoint,
    required this.name,
    this.nameClaimType,
    required this.openidConfigurationEndpoint,
    this.scopes,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorisationEndpoint': ?authorisationEndpoint,
      'certificationUri': ?certificationUri,
      'clientCredentialMethod': ?clientCredentialMethod,
      'clientId': clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
      'issuerEndpoint': ?issuerEndpoint,
      'name': name,
      'nameClaimType': ?nameClaimType,
      'openidConfigurationEndpoint': openidConfigurationEndpoint,
      'scopes': ?scopes,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory WindowsWebAppSlotAuthSettingsV2CustomOidcV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsV2CustomOidcV2(
      authorisationEndpoint: map['authorisationEndpoint'] == null ? null : (map['authorisationEndpoint']! as String).input(),
      certificationUri: map['certificationUri'] == null ? null : (map['certificationUri']! as String).input(),
      clientCredentialMethod: map['clientCredentialMethod'] == null ? null : (map['clientCredentialMethod']! as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : (map['clientSecretSettingName']! as String).input(),
      issuerEndpoint: map['issuerEndpoint'] == null ? null : (map['issuerEndpoint']! as String).input(),
      name: (map['name'] as String).input(),
      nameClaimType: map['nameClaimType'] == null ? null : (map['nameClaimType']! as String).input(),
      openidConfigurationEndpoint: (map['openidConfigurationEndpoint'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint']! as String).input(),
    );
  }
}

