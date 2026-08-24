// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamKey.
class GetStreamKeyResult {
  /// Identifier.
  final String? accountId;
  /// The date and time a signing key was created.
  final String? created;
  /// Identifier.
  final String? id;
  /// The unique identifier for the signing key.
  final String? keyId;

  /// Creates a new [GetStreamKeyResult].
  /// [accountId] Identifier.
  /// [created] The date and time a signing key was created.
  /// [id] Identifier.
  /// [keyId] The unique identifier for the signing key.
  const GetStreamKeyResult({
    this.accountId,
    this.created,
    this.id,
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'id': ?id,
      'keyId': ?keyId,
    };
  }

  factory GetStreamKeyResult.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
