// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingsV2CustomOidcV2 {
  /// The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String> authorisationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String> certificationUri;
  /// The Client Credential Method used.
  final pulumi.Input<String> clientCredentialMethod;
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String> issuerEndpoint;
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// The name of the claim that contains the users name.
  final pulumi.Input<String> nameClaimType;
  /// The endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  final pulumi.Input<String> openidConfigurationEndpoint;
  /// The list of the scopes that are requested while authenticating.
  final pulumi.Input<List<String>> scopes;
  /// The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2CustomOidcV2].
  /// [authorisationEndpoint] The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  /// [clientCredentialMethod] The Client Credential Method used.
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [issuerEndpoint] The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  /// [name] The name of this Linux Web App.
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [openidConfigurationEndpoint] The endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  /// [scopes] The list of the scopes that are requested while authenticating.
  /// [tokenEndpoint] The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  GetLinuxWebAppAuthSettingsV2CustomOidcV2({
    required this.authorisationEndpoint,
    required this.certificationUri,
    required this.clientCredentialMethod,
    required this.clientId,
    required this.clientSecretSettingName,
    required this.issuerEndpoint,
    required this.name,
    required this.nameClaimType,
    required this.openidConfigurationEndpoint,
    required this.scopes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorisationEndpoint': authorisationEndpoint,
      'certificationUri': certificationUri,
      'clientCredentialMethod': clientCredentialMethod,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'issuerEndpoint': issuerEndpoint,
      'name': name,
      'nameClaimType': nameClaimType,
      'openidConfigurationEndpoint': openidConfigurationEndpoint,
      'scopes': scopes,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory GetLinuxWebAppAuthSettingsV2CustomOidcV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingsV2CustomOidcV2(
      authorisationEndpoint: pulumi.Input.fromValue(map['authorisationEndpoint'] as String),
      certificationUri: pulumi.Input.fromValue(map['certificationUri'] as String),
      clientCredentialMethod: pulumi.Input.fromValue(map['clientCredentialMethod'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      issuerEndpoint: pulumi.Input.fromValue(map['issuerEndpoint'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameClaimType: pulumi.Input.fromValue(map['nameClaimType'] as String),
      openidConfigurationEndpoint: pulumi.Input.fromValue(map['openidConfigurationEndpoint'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
    );
  }
}

