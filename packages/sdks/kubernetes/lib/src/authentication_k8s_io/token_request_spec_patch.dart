// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bound_object_reference_patch.dart';

/// TokenRequestSpec contains client provided parameters of a token request.
class TokenRequestSpecPatch {
  /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  final pulumi.Input<List<String>>? audiences;
  /// BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  final pulumi.Input<BoundObjectReferencePatch>? boundObjectRef;
  /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  final pulumi.Input<int>? expirationSeconds;

  /// Creates a new [TokenRequestSpecPatch].
  /// [audiences] Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  /// [boundObjectRef] BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  /// [expirationSeconds] ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  TokenRequestSpecPatch({
    this.audiences,
    this.boundObjectRef,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'boundObjectRef': ?pulumi.Input.mapOptionalInputValue<BoundObjectReferencePatch, Map<String, dynamic>>(boundObjectRef, (value) => value.toMap()),
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestSpecPatch.fromMap(Map<String, dynamic> map) {
    return TokenRequestSpecPatch(
      audiences: (() { final guardedValue = map['audiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      boundObjectRef: (() { final guardedValue = map['boundObjectRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BoundObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expirationSeconds: (() { final guardedValue = map['expirationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

