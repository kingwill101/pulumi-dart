// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerKey resources.
class ServerKeyState {
  /// The URL to a Key Vault Key.
  final pulumi.Input<String?>? keyVaultKeyId;
  /// The ID of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serverId;

  /// Creates a new [ServerKeyState].
  /// [keyVaultKeyId] The URL to a Key Vault Key.
  /// [serverId] The ID of the PostgreSQL Server. Changing this forces a new resource to be created.
  const ServerKeyState({
    this.keyVaultKeyId,
    this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': ?keyVaultKeyId,
      'serverId': ?serverId,
    };
  }

  factory ServerKeyState.fromMap(Map<String, dynamic> map) {
    return ServerKeyState(
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
