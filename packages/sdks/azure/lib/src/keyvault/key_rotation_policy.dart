// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy_automatic.dart';

class KeyRotationPolicy {
  /// An `automatic` block as defined below.
  final pulumi.Input<KeyRotationPolicyAutomatic>? automatic;

  /// Expire a Key Vault Key after given duration as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String>? expireAfter;

  /// Notify at a given duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String>? notifyBeforeExpiry;

  /// Creates a new [KeyRotationPolicy].
  /// [automatic] An `automatic` block as defined below.
  /// [expireAfter] Expire a Key Vault Key after given duration as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  /// [notifyBeforeExpiry] Notify at a given duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  KeyRotationPolicy({
    this.automatic,
    this.expireAfter,
    this.notifyBeforeExpiry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic':
          ?pulumi.Input.mapOptionalInputValue<
            KeyRotationPolicyAutomatic,
            Map<String, dynamic>
          >(automatic, (value) => value.toMap()),
      'expireAfter': ?expireAfter,
      'notifyBeforeExpiry': ?notifyBeforeExpiry,
    };
  }

  factory KeyRotationPolicy.fromMap(Map<String, dynamic> map) {
    return KeyRotationPolicy(
      automatic: (() {
        final guardedValue = map['automatic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyRotationPolicyAutomatic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expireAfter: (() {
        final guardedValue = map['expireAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notifyBeforeExpiry: (() {
        final guardedValue = map['notifyBeforeExpiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
