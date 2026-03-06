// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceAuthSecret {
  /// Indicates the intended usage for the authentication secret.
  final pulumi.Input<String>? usage;
  /// Sets the UUID for the authentication secret tied to the storage source connection.
  final pulumi.Input<String>? uuid;

  /// Creates a new [PoolSourceAuthSecret].
  /// [usage] Indicates the intended usage for the authentication secret.
  /// [uuid] Sets the UUID for the authentication secret tied to the storage source connection.
  const PoolSourceAuthSecret({
    this.usage,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usage': ?usage,
      'uuid': ?uuid,
    };
  }

  factory PoolSourceAuthSecret.fromMap(Map<String, dynamic> map) {
    return PoolSourceAuthSecret(
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

