// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkloadIdentityPoolOpenidConfig.
class GetWorkloadIdentityPoolOpenidConfigResult {
  /// URL pointing to an authorization endpoint under this issuer.
  final String? authorizationEndpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// JSON array containing a list of the JWS signing algorithms (alg values) supported by the OP for the ID token to encode the claims in a JWT [JWT].
  final List<String>? idTokenSigningAlgValuesSupporteds;
  /// URL using the https scheme with no query or fragment components that the OP asserts as its issuer identifier.
  final String? issuer;
  /// URL of the OP's JWK Set [JWK] document, which MUST use the https scheme.
  final String? jwksUri;
  final String? resourceName;
  /// JSON array containing a list of the OAuth 2.0 responseType values that this OP supports.
  final List<String>? responseTypesSupporteds;
  /// JSON array containing a list of the subject identifier types that this OP supports.
  final List<String>? subjectTypesSupporteds;
  /// URL pointing to a token endpoint under this issuer.
  final String? tokenEndpoint;

  /// Creates a new [GetWorkloadIdentityPoolOpenidConfigResult].
  /// [authorizationEndpoint] URL pointing to an authorization endpoint under this issuer.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idTokenSigningAlgValuesSupporteds] JSON array containing a list of the JWS signing algorithms (alg values) supported by the OP for the ID token to encode the claims in a JWT [JWT].
  /// [issuer] URL using the https scheme with no query or fragment components that the OP asserts as its issuer identifier.
  /// [jwksUri] URL of the OP's JWK Set [JWK] document, which MUST use the https scheme.
  /// [resourceName] Optional.
  /// [responseTypesSupporteds] JSON array containing a list of the OAuth 2.0 responseType values that this OP supports.
  /// [subjectTypesSupporteds] JSON array containing a list of the subject identifier types that this OP supports.
  /// [tokenEndpoint] URL pointing to a token endpoint under this issuer.
  const GetWorkloadIdentityPoolOpenidConfigResult({
    this.authorizationEndpoint,
    this.id,
    this.idTokenSigningAlgValuesSupporteds,
    this.issuer,
    this.jwksUri,
    this.resourceName,
    this.responseTypesSupporteds,
    this.subjectTypesSupporteds,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'id': ?id,
      'idTokenSigningAlgValuesSupporteds': ?idTokenSigningAlgValuesSupporteds,
      'issuer': ?issuer,
      'jwksUri': ?jwksUri,
      'resourceName': ?resourceName,
      'responseTypesSupporteds': ?responseTypesSupporteds,
      'subjectTypesSupporteds': ?subjectTypesSupporteds,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory GetWorkloadIdentityPoolOpenidConfigResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolOpenidConfigResult(
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idTokenSigningAlgValuesSupporteds: (() { final guardedValue = map['idTokenSigningAlgValuesSupporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jwksUri: (() { final guardedValue = map['jwksUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responseTypesSupporteds: (() { final guardedValue = map['responseTypesSupporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subjectTypesSupporteds: (() { final guardedValue = map['subjectTypesSupporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
