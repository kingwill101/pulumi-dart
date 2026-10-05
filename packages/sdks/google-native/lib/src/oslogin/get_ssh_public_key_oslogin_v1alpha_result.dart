// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshPublicKey.
class GetSshPublicKeyOsloginV1alphaResult {
  /// An expiration time in microseconds since epoch.
  final String? expirationTimeUsec;
  /// The SHA-256 fingerprint of the SSH public key.
  final String? fingerprint;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final String? key;
  /// The canonical resource name.
  final String? name;

  /// Creates a new [GetSshPublicKeyOsloginV1alphaResult].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [fingerprint] The SHA-256 fingerprint of the SSH public key.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [name] The canonical resource name.
  const GetSshPublicKeyOsloginV1alphaResult({
    this.expirationTimeUsec,
    this.fingerprint,
    this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'fingerprint': ?fingerprint,
      'key': ?key,
      'name': ?name,
    };
  }

  factory GetSshPublicKeyOsloginV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyOsloginV1alphaResult(
      expirationTimeUsec: (() { final guardedValue = map['expirationTimeUsec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
