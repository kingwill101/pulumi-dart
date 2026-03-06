// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SacRealmPairingKey {
  /// (Output)
  /// Timestamp in UTC of when this resource is considered expired. It expires 7 days after creation.
  final pulumi.Input<String>? expireTime;
  /// (Output)
  /// Key value.
  final pulumi.Input<String>? key;

  /// Creates a new [SacRealmPairingKey].
  /// [expireTime] (Output)
  /// [key] (Output)
  const SacRealmPairingKey({
    this.expireTime,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
      'key': ?key,
    };
  }

  factory SacRealmPairingKey.fromMap(Map<String, dynamic> map) {
    return SacRealmPairingKey(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

