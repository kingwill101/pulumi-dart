// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_pool_provider_oidc_client_secret.dart';
import 'workforce_pool_provider_oidc_web_sso_config.dart';

class WorkforcePoolProviderOidc {
  /// The client ID. Must match the audience claim of the JWT issued by the identity provider.
  final pulumi.Input<String> clientId;
  /// The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderOidcClientSecret?>? clientSecret;
  /// The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  final pulumi.Input<String> issuerUri;
  /// OIDC JWKs in JSON String format. For details on definition of a
  /// JWK, see https:tools.ietf.org/html/rfc7517. If not set, then we
  /// use the `jwksUri` from the discovery document fetched from the
  /// .well-known path for the `issuerUri`. Currently, RSA and EC asymmetric
  /// keys are supported. The JWK must use following format and include only
  /// the following fields:
  /// ```
  /// {
  /// "keys": [
  /// {
  /// "kty": "RSA/EC",
  /// "alg": "<algorithm>",
  /// "use": "sig",
  /// "kid": "<key-id>",
  /// "n": "",
  /// "e": "",
  /// "x": "",
  /// "y": "",
  /// "crv": ""
  /// }
  /// ]
  /// }
  /// ```
  final pulumi.Input<String?>? jwksJson;
  /// Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  /// Structure is documented below.
  final pulumi.Input<WorkforcePoolProviderOidcWebSsoConfig?>? webSsoConfig;

  /// Creates a new [WorkforcePoolProviderOidc].
  /// [clientId] The client ID. Must match the audience claim of the JWT issued by the identity provider.
  /// [clientSecret] The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// [issuerUri] The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  /// [jwksJson] OIDC JWKs in JSON String format. For details on definition of a
  /// [webSsoConfig] Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  const WorkforcePoolProviderOidc({
    required this.clientId,
    this.clientSecret,
    required this.issuerUri,
    this.jwksJson,
    this.webSsoConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderOidcClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'issuerUri': issuerUri,
      'jwksJson': ?jwksJson,
      'webSsoConfig': ?pulumi.Input.mapOptionalInputValue<WorkforcePoolProviderOidcWebSsoConfig, Map<String, dynamic>>(webSsoConfig, (value) => value.toMap()),
    };
  }

  factory WorkforcePoolProviderOidc.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderOidc(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderOidcClientSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      issuerUri: pulumi.Input.fromValue(map['issuerUri'] as String),
      jwksJson: (() { final guardedValue = map['jwksJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webSsoConfig: (() { final guardedValue = map['webSsoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkforcePoolProviderOidcWebSsoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
