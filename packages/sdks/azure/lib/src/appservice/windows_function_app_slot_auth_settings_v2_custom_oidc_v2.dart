// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2 {
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
  /// &gt; **Note:** An `app_setting` matching this value in upper case with the suffix of `_PROVIDER_AUTHENTICATION_SECRET` is required. e.g. `MYOIDC_PROVIDER_AUTHENTICATION_SECRET` for a value of `myoidc`.
  final pulumi.Input<String> name;
  /// The name of the claim that contains the users name.
  final pulumi.Input<String>? nameClaimType;
  /// The app setting name that contains the `client_secret` value used for the Custom OIDC Login.
  final pulumi.Input<String> openidConfigurationEndpoint;
  /// The list of the scopes that should be requested while authenticating.
  final pulumi.Input<List<String>>? scopes;
  /// The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2].
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
  WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2({
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

  factory WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotAuthSettingsV2CustomOidcV2(
      authorisationEndpoint: (() { final guardedValue = map['authorisationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificationUri: (() { final guardedValue = map['certificationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCredentialMethod: (() { final guardedValue = map['clientCredentialMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerEndpoint: (() { final guardedValue = map['issuerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameClaimType: (() { final guardedValue = map['nameClaimType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openidConfigurationEndpoint: pulumi.Input.fromValue(map['openidConfigurationEndpoint'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

