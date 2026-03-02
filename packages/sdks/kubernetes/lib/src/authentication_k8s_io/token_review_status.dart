// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info.dart';

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatus {
  /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  final pulumi.Input<List<String>>? audiences;
  /// Authenticated indicates that the token was associated with a known user.
  final pulumi.Input<bool>? authenticated;
  /// Error indicates that the token couldn't be checked
  final pulumi.Input<String>? error;
  /// User is the UserInfo associated with the provided token.
  final pulumi.Input<UserInfo>? user;

  /// Creates a new [TokenReviewStatus].
  /// [audiences] Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  /// [authenticated] Authenticated indicates that the token was associated with a known user.
  /// [error] Error indicates that the token couldn't be checked
  /// [user] User is the UserInfo associated with the provided token.
  TokenReviewStatus({
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
      audiences: map['audiences'] == null ? null : ((map['audiences'] as List).cast<String>()).input(),
      authenticated: map['authenticated'] == null ? null : (map['authenticated'] as bool).input(),
      error: map['error'] == null ? null : (map['error'] as String).input(),
      user: map['user'] == null ? null : (UserInfo.fromMap((map['user'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

