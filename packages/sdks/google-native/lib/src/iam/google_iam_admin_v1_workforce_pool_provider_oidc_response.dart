// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret_response.dart';
import 'google_iam_admin_v1_workforce_pool_provider_oidc_web_sso_config_response.dart';

/// Represents an OpenId Connect 1.0 identity provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcResponse {
  /// The client ID. Must match the audience claim of the JWT issued by the identity provider.
  final pulumi.Input<String> clientId;
  /// The optional client secret. Required to enable Authorization Code flow for web sign-in.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse> clientSecret;
  /// The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  final pulumi.Input<String> issuerUri;
  /// OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  final pulumi.Input<String> jwksJson;
  /// Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  final pulumi.Input<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse> webSsoConfig;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcResponse].
  /// [clientId] The client ID. Must match the audience claim of the JWT issued by the identity provider.
  /// [clientSecret] The optional client secret. Required to enable Authorization Code flow for web sign-in.
  /// [issuerUri] The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
  /// [jwksJson] OIDC JWKs in JSON String format. For details on the definition of a JWK, see https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the discovery document(fetched from the .well-known path of the `issuer_uri`) will be used. Currently, RSA and EC asymmetric keys are supported. The JWK must use following format and include only the following fields: { "keys": [ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e": "", "x": "", "y": "", "crv": "" } ] }
  /// [webSsoConfig] Configuration for web single sign-on for the OIDC provider. Here, web sign-in refers to console sign-in and gcloud sign-in through the browser.
  GoogleIamAdminV1WorkforcePoolProviderOidcResponse({
    required this.clientId,
    required this.clientSecret,
    required this.issuerUri,
    required this.jwksJson,
    required this.webSsoConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'issuerUri': issuerUri,
      'jwksJson': jwksJson,
      'webSsoConfig': pulumi.Input.mapInputValue<GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse, Map<String, dynamic>>(webSsoConfig, (value) => value.toMap()),
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcResponse.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcResponse(
      clientId: (map['clientId'] as String).input(),
      clientSecret: (GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretResponse.fromMap((map['clientSecret'] as Map).cast<String, dynamic>())).input(),
      issuerUri: (map['issuerUri'] as String).input(),
      jwksJson: (map['jwksJson'] as String).input(),
      webSsoConfig: (GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponse.fromMap((map['webSsoConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

