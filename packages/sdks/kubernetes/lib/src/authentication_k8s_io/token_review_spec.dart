// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpec {
  /// audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final pulumi.Input<List<String>?>? audiences;
  /// token is the opaque bearer token.
  final pulumi.Input<String> token;

  /// Creates a new [TokenReviewSpec].
  /// [audiences] audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  /// [token] token is the opaque bearer token.
  const TokenReviewSpec({
    this.audiences,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'token': token,
    };
  }

  factory TokenReviewSpec.fromMap(Map<String, dynamic> map) {
    return TokenReviewSpec(
      audiences: (() { final guardedValue = map['audiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
