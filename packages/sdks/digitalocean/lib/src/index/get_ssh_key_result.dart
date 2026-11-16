// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshKey.
class GetSshKeyResult {
  /// The fingerprint of the public key of the ssh key.
  final String? fingerprint;
  /// The ID of the ssh key.
  final int? id;
  final String? name;
  /// The public key of the ssh key.
  final String? publicKey;

  /// Creates a new [GetSshKeyResult].
  /// [fingerprint] The fingerprint of the public key of the ssh key.
  /// [id] The ID of the ssh key.
  /// [name] Optional.
  /// [publicKey] The public key of the ssh key.
  const GetSshKeyResult({
    this.fingerprint,
    this.id,
    this.name,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'publicKey': ?publicKey,
    };
  }

  factory GetSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshKeyResult(
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
