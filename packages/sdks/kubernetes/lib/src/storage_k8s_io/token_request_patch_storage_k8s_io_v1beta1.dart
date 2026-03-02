// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenRequest contains parameters of a service account token.
class TokenRequestPatchStorageK8sIoV1beta1 {
  /// Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final pulumi.Input<String>? audience;
  /// ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec"
  final pulumi.Input<int>? expirationSeconds;

  /// Creates a new [TokenRequestPatchStorageK8sIoV1beta1].
  /// [audience] Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  /// [expirationSeconds] ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec"
  TokenRequestPatchStorageK8sIoV1beta1({
    this.audience,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestPatchStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TokenRequestPatchStorageK8sIoV1beta1(
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      expirationSeconds: map['expirationSeconds'] == null ? null : (map['expirationSeconds'] as int).input(),
    );
  }
}

