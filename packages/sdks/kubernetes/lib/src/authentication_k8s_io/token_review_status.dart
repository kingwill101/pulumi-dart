// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info.dart';

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatus {
  /// audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  final pulumi.Input<List<String>>? audiences;
  /// authenticated indicates that the token was associated with a known user.
  final pulumi.Input<bool>? authenticated;
  /// error indicates that the token couldn't be checked
  final pulumi.Input<String>? error;
  /// user is the UserInfo associated with the provided token.
  final pulumi.Input<UserInfo>? user;

  /// Creates a new [TokenReviewStatus].
  /// [audiences] audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  /// [authenticated] authenticated indicates that the token was associated with a known user.
  /// [error] error indicates that the token couldn't be checked
  /// [user] user is the UserInfo associated with the provided token.
  const TokenReviewStatus({
    this.audiences,
    this.authenticated,
    this.error,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'authenticated': ?authenticated,
      'error': ?error,
      'user': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory TokenReviewStatus.fromMap(Map<String, dynamic> map) {
    return TokenReviewStatus(
      audiences: (() { final guardedValue = map['audiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authenticated: (() { final guardedValue = map['authenticated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
