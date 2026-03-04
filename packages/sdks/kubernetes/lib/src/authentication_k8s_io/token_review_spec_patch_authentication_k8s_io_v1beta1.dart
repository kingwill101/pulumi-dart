// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpecPatchAuthenticationK8sIoV1beta1 {
  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final pulumi.Input<List<String>>? audiences;

  /// Token is the opaque bearer token.
  final pulumi.Input<String>? token;

  /// Creates a new [TokenReviewSpecPatchAuthenticationK8sIoV1beta1].
  /// [audiences] Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  /// [token] Token is the opaque bearer token.
  TokenReviewSpecPatchAuthenticationK8sIoV1beta1({this.audiences, this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audiences': ?audiences, 'token': ?token};
  }

  factory TokenReviewSpecPatchAuthenticationK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return TokenReviewSpecPatchAuthenticationK8sIoV1beta1(
      audiences: (() {
        final guardedValue = map['audiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
