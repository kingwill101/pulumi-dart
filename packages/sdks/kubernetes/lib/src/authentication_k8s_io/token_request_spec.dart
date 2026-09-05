// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bound_object_reference.dart';

/// TokenRequestSpec contains client provided parameters of a token request.
class TokenRequestSpec {
  /// attestations is a map of well-known keys to string-slice values. The values for each key have a specific semantic meaning, which is documented on the key definition. Requesters of tokens may ask the Kubernetes API Server to attest to certain claims. The API Server may perform authorization checks depending on the key of this map.
  final pulumi.Input<Map<String, List<String>>?>? attestations;
  /// audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  final pulumi.Input<List<String>> audiences;
  /// boundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  final pulumi.Input<BoundObjectReference?>? boundObjectRef;
  /// expirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  final pulumi.Input<int?>? expirationSeconds;

  /// Creates a new [TokenRequestSpec].
  /// [attestations] attestations is a map of well-known keys to string-slice values. The values for each key have a specific semantic meaning, which is documented on the key definition. Requesters of tokens may ask the Kubernetes API Server to attest to certain claims. The API Server may perform authorization checks depending on the key of this map.
  /// [audiences] audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  /// [boundObjectRef] boundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  /// [expirationSeconds] expirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  const TokenRequestSpec({
    this.attestations,
    required this.audiences,
    this.boundObjectRef,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestations': ?attestations,
      'audiences': audiences,
      'boundObjectRef': ?pulumi.Input.mapOptionalInputValue<BoundObjectReference, Map<String, dynamic>>(boundObjectRef, (value) => value.toMap()),
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestSpec.fromMap(Map<String, dynamic> map) {
    return TokenRequestSpec(
      attestations: (() { final guardedValue = map['attestations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      audiences: pulumi.Input.fromValue((map['audiences'] as List).cast<String>()),
      boundObjectRef: (() { final guardedValue = map['boundObjectRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BoundObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expirationSeconds: (() { final guardedValue = map['expirationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
