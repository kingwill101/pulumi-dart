// ignore_for_file: unused_element, unnecessary_cast


/// TokenRequest contains parameters of a service account token.
class TokenRequestPatch {
  /// audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final String? audience;
  /// expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  final int? expirationSeconds;

  /// Creates a new [TokenRequestPatch].
  /// [audience] audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  /// [expirationSeconds] expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  TokenRequestPatch({
    this.audience,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestPatch.fromMap(Map<String, dynamic> map) {
    return TokenRequestPatch(
      audience: map['audience'] == null ? null : map['audience'] as String,
      expirationSeconds: map['expirationSeconds'] == null ? null : map['expirationSeconds'] as int,
    );
  }
}

