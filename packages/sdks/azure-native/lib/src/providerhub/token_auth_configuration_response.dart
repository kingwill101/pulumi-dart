// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenAuthConfigurationResponse {
  /// The authentication scheme.
  final pulumi.Input<String>? authenticationScheme;
  /// Whether certification authentication fallback is disabled.
  final pulumi.Input<bool>? disableCertificateAuthenticationFallback;
  /// The signed request scope.
  final pulumi.Input<String>? signedRequestScope;

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
      authenticationScheme: (() { final guardedValue = map['authenticationScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableCertificateAuthenticationFallback: (() { final guardedValue = map['disableCertificateAuthenticationFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      signedRequestScope: (() { final guardedValue = map['signedRequestScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

