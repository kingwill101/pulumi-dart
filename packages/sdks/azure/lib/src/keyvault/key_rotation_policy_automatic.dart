// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyRotationPolicyAutomatic {
  /// Rotate automatically at a duration after create as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String?>? timeAfterCreation;
  /// Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String?>? timeBeforeExpiry;

  /// Creates a new [KeyRotationPolicyAutomatic].
  /// [timeAfterCreation] Rotate automatically at a duration after create as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  /// [timeBeforeExpiry] Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  const KeyRotationPolicyAutomatic({
    this.timeAfterCreation,
    this.timeBeforeExpiry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeAfterCreation': ?timeAfterCreation,
      'timeBeforeExpiry': ?timeBeforeExpiry,
    };
  }

  factory KeyRotationPolicyAutomatic.fromMap(Map<String, dynamic> map) {
    return KeyRotationPolicyAutomatic(
      timeAfterCreation: (() { final guardedValue = map['timeAfterCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeBeforeExpiry: (() { final guardedValue = map['timeBeforeExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
