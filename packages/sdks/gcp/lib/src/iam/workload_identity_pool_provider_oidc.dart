// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityPoolProviderOidc {
  /// Acceptable values for the `aud` field (audience) in the OIDC token. Token exchange
  /// requests are rejected if the token audience does not match one of the configured
  /// values. Each audience may be at most 256 characters. A maximum of 10 audiences may
  /// be configured.
  /// If this list is empty, the OIDC token audience must be equal to the full canonical
  /// resource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix.
  /// For example:
  /// ```
  /// //iam.googleapis.com/projects/<project-number>/locations/<location>/workloadIdentityPools/<pool-id>/providers/<provider-id>
  /// https://iam.googleapis.com/projects/<project-number>/locations/<location>/workloadIdentityPools/<pool-id>/providers/<provider-id>
  /// ```
  final pulumi.Input<List<String>?>? allowedAudiences;
  /// The URL to fetch the OIDC discovery document from, overriding the default URL
  /// derived from `issuerUri`. If not set, `discoveryUri` defaults to `issuerUri`
  /// with `/.well-known/openid-configuration` appended, as per the OpenID Connect
  /// Discovery 1.0 specification.
  /// If set, `discoveryUri` must meet the following requirements:
  /// * Must start with `https://`.
  /// * Must not exceed 2000 characters.
  /// * The scheme, host, and port must match `issuerUri`.
  /// * The path must contain `/.well-known/&lt;suffix&gt;` (where `&lt;suffix&gt;` is not
  /// empty, such as `openid-configuration`) and conform to the `issuerUri`
  /// topology:
  /// * The well-known path segment is inserted before the issuer path (for
  /// example, `https://example.com/.well-known/openid-configuration/tenant1`
  /// for issuer `https://example.com/tenant1`), or
  /// * The well-known path segment is appended under the issuer path (for
  /// example, `https://example.com/tenant1/.well-known/openid-configuration`
  /// for issuer `https://example.com/tenant1`).
  final pulumi.Input<String?>? discoveryUri;
  /// The OIDC issuer URL.
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

  /// Creates a new [WorkloadIdentityPoolProviderOidc].
  /// [allowedAudiences] Acceptable values for the `aud` field (audience) in the OIDC token. Token exchange
  /// [discoveryUri] The URL to fetch the OIDC discovery document from, overriding the default URL
  /// [issuerUri] The OIDC issuer URL.
  /// [jwksJson] OIDC JWKs in JSON String format. For details on definition of a
  const WorkloadIdentityPoolProviderOidc({
    this.allowedAudiences,
    this.discoveryUri,
    required this.issuerUri,
    this.jwksJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'discoveryUri': ?discoveryUri,
      'issuerUri': issuerUri,
      'jwksJson': ?jwksJson,
    };
  }

  factory WorkloadIdentityPoolProviderOidc.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderOidc(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      discoveryUri: (() { final guardedValue = map['discoveryUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerUri: pulumi.Input.fromValue(map['issuerUri'] as String),
      jwksJson: (() { final guardedValue = map['jwksJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
