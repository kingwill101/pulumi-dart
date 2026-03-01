// ignore_for_file: unused_element, unnecessary_cast


class TokenAuthConfigurationResponse {
  /// The authentication scheme.
  final String? authenticationScheme;
  /// Whether certification authentication fallback is disabled.
  final bool? disableCertificateAuthenticationFallback;
  /// The signed request scope.
  final String? signedRequestScope;

  /// Creates a new [TokenAuthConfigurationResponse].
  /// [authenticationScheme] The authentication scheme.
  /// [disableCertificateAuthenticationFallback] Whether certification authentication fallback is disabled.
  /// [signedRequestScope] The signed request scope.
  TokenAuthConfigurationResponse({
    this.authenticationScheme,
    this.disableCertificateAuthenticationFallback,
    this.signedRequestScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationScheme': ?authenticationScheme,
      'disableCertificateAuthenticationFallback': ?disableCertificateAuthenticationFallback,
      'signedRequestScope': ?signedRequestScope,
    };
  }

  factory TokenAuthConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TokenAuthConfigurationResponse(
      authenticationScheme: map['authenticationScheme'] == null ? null : map['authenticationScheme'] as String,
      disableCertificateAuthenticationFallback: map['disableCertificateAuthenticationFallback'] == null ? null : map['disableCertificateAuthenticationFallback'] as bool,
      signedRequestScope: map['signedRequestScope'] == null ? null : map['signedRequestScope'] as String,
    );
  }
}

