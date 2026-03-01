// ignore_for_file: unused_element, unnecessary_cast

import 'bound_object_reference.dart';

/// TokenRequestSpec contains client provided parameters of a token request.
class TokenRequestSpec {
  /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  final List<String> audiences;
  /// BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  final BoundObjectReference? boundObjectRef;
  /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  final int? expirationSeconds;

  /// Creates a new [TokenRequestSpec].
  /// [audiences] Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  /// [boundObjectRef] BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  /// [expirationSeconds] ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  TokenRequestSpec({
    required this.audiences,
    this.boundObjectRef,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'boundObjectRef': ?boundObjectRef == null ? null : boundObjectRef!.toMap(),
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestSpec.fromMap(Map<String, dynamic> map) {
    return TokenRequestSpec(
      audiences: (map['audiences'] as List).cast<String>(),
      boundObjectRef: map['boundObjectRef'] == null ? null : BoundObjectReference.fromMap((map['boundObjectRef'] as Map).cast<String, dynamic>()),
      expirationSeconds: map['expirationSeconds'] == null ? null : map['expirationSeconds'] as int,
    );
  }
}

