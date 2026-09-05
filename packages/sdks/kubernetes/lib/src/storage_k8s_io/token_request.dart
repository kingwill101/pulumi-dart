// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenRequest contains parameters of a service account token.
class TokenRequest {
  /// audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final pulumi.Input<String> audience;
  /// expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  final pulumi.Input<int?>? expirationSeconds;

  /// Creates a new [TokenRequest].
  /// [audience] audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  /// [expirationSeconds] expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  const TokenRequest({
    required this.audience,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequest.fromMap(Map<String, dynamic> map) {
    return TokenRequest(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      expirationSeconds: (() { final guardedValue = map['expirationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
