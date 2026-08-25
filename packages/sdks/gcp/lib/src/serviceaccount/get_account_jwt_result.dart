// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountJwt.
class GetAccountJwtResult {
  final List<String>? delegates;
  final int? expiresIn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The signed JWT containing the JWT Claims Set from the `payload`.
  final String? jwt;
  final String? payload;
  final String? targetServiceAccount;

  /// Creates a new [GetAccountJwtResult].
  /// [delegates] Optional.
  /// [expiresIn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jwt] The signed JWT containing the JWT Claims Set from the `payload`.
  /// [payload] Optional.
  /// [targetServiceAccount] Optional.
  const GetAccountJwtResult({
    this.delegates,
    this.expiresIn,
    this.id,
    this.jwt,
    this.payload,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegates': ?delegates,
      'expiresIn': ?expiresIn,
      'id': ?id,
      'jwt': ?jwt,
      'payload': ?payload,
      'targetServiceAccount': ?targetServiceAccount,
    };
  }

  factory GetAccountJwtResult.fromMap(Map<String, dynamic> map) {
    return GetAccountJwtResult(
      delegates: (() { final guardedValue = map['delegates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      expiresIn: (() { final guardedValue = map['expiresIn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jwt: (() { final guardedValue = map['jwt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetServiceAccount: (() { final guardedValue = map['targetServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
