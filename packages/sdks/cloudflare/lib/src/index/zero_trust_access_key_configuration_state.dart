// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustAccessKeyConfiguration resources.
class ZeroTrustAccessKeyConfigurationState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The number of days until the next key rotation.
  final pulumi.Input<double?>? daysUntilNextRotation;
  /// The number of days between key rotations.
  final pulumi.Input<double?>? keyRotationIntervalDays;
  /// The timestamp of the previous key rotation.
  final pulumi.Input<String?>? lastKeyRotationAt;

  /// Creates a new [ZeroTrustAccessKeyConfigurationState].
  /// [accountId] Identifier.
  /// [daysUntilNextRotation] The number of days until the next key rotation.
  /// [keyRotationIntervalDays] The number of days between key rotations.
  /// [lastKeyRotationAt] The timestamp of the previous key rotation.
  const ZeroTrustAccessKeyConfigurationState({
    this.accountId,
    this.daysUntilNextRotation,
    this.keyRotationIntervalDays,
    this.lastKeyRotationAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'daysUntilNextRotation': ?daysUntilNextRotation,
      'keyRotationIntervalDays': ?keyRotationIntervalDays,
      'lastKeyRotationAt': ?lastKeyRotationAt,
    };
  }

  factory ZeroTrustAccessKeyConfigurationState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessKeyConfigurationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysUntilNextRotation: (() { final guardedValue = map['daysUntilNextRotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      keyRotationIntervalDays: (() { final guardedValue = map['keyRotationIntervalDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      lastKeyRotationAt: (() { final guardedValue = map['lastKeyRotationAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
