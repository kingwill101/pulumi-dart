// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the endpoints used for the custom Open ID Connect provider.
class OpenIdConnectConfig {
  /// The endpoint to be used to make an authorization request.
  final String? authorizationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token.
  final String? certificationUri;
  /// The endpoint that issues the token.
  final String? issuer;
  /// The endpoint to be used to request a token.
  final String? tokenEndpoint;
  /// The endpoint that contains all the configuration endpoints for the provider.
  final String? wellKnownOpenIdConfiguration;

  /// Creates a new [OpenIdConnectConfig].
  /// [authorizationEndpoint] The endpoint to be used to make an authorization request.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token.
  /// [issuer] The endpoint that issues the token.
  /// [tokenEndpoint] The endpoint to be used to request a token.
  /// [wellKnownOpenIdConfiguration] The endpoint that contains all the configuration endpoints for the provider.
  OpenIdConnectConfig({
    this.authorizationEndpoint,
    this.certificationUri,
    this.issuer,
    this.tokenEndpoint,
    this.wellKnownOpenIdConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'certificationUri': ?certificationUri,
      'issuer': ?issuer,
      'tokenEndpoint': ?tokenEndpoint,
      'wellKnownOpenIdConfiguration': ?wellKnownOpenIdConfiguration,
    };
  }

  factory OpenIdConnectConfig.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectConfig(
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : map['authorizationEndpoint'] as String,
      certificationUri: map['certificationUri'] == null ? null : map['certificationUri'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      tokenEndpoint: map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
      wellKnownOpenIdConfiguration: map['wellKnownOpenIdConfiguration'] == null ? null : map['wellKnownOpenIdConfiguration'] as String,
    );
  }
}

