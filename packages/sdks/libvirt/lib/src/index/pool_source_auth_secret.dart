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
  PoolSourceAuthSecret({
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
      usage: map['usage'] == null ? null : (map['usage'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

