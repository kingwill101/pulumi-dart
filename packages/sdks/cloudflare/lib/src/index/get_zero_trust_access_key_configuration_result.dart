// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessKeyConfiguration.
class GetZeroTrustAccessKeyConfigurationResult {
  /// Identifier.
  final String? accountId;
  /// The number of days until the next key rotation.
  final double? daysUntilNextRotation;
  /// Identifier.
  final String? id;
  /// The number of days between key rotations.
  final double? keyRotationIntervalDays;
  /// The timestamp of the previous key rotation.
  final String? lastKeyRotationAt;

  /// Creates a new [GetZeroTrustAccessKeyConfigurationResult].
  /// [accountId] Identifier.
  /// [daysUntilNextRotation] The number of days until the next key rotation.
  /// [id] Identifier.
  /// [keyRotationIntervalDays] The number of days between key rotations.
  /// [lastKeyRotationAt] The timestamp of the previous key rotation.
  const GetZeroTrustAccessKeyConfigurationResult({
    this.accountId,
    this.daysUntilNextRotation,
    this.id,
    this.keyRotationIntervalDays,
    this.lastKeyRotationAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'daysUntilNextRotation': ?daysUntilNextRotation,
      'id': ?id,
      'keyRotationIntervalDays': ?keyRotationIntervalDays,
      'lastKeyRotationAt': ?lastKeyRotationAt,
    };
  }

  factory GetZeroTrustAccessKeyConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessKeyConfigurationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daysUntilNextRotation: (() { final guardedValue = map['daysUntilNextRotation']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyRotationIntervalDays: (() { final guardedValue = map['keyRotationIntervalDays']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      lastKeyRotationAt: (() { final guardedValue = map['lastKeyRotationAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
