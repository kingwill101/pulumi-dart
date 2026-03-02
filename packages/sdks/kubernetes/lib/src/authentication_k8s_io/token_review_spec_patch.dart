// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpecPatch {
  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final pulumi.Input<List<String>>? audiences;
  /// Token is the opaque bearer token.
  final pulumi.Input<String>? token;

  /// Creates a new [TokenReviewSpecPatch].
  /// [audiences] Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  /// [token] Token is the opaque bearer token.
  TokenReviewSpecPatch({
    this.audiences,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'token': ?token,
    };
  }

  factory TokenReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return TokenReviewSpecPatch(
      audiences: map['audiences'] == null ? null : ((map['audiences']! as List).cast<String>()).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

