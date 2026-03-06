// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_server_key_server_key_args_doc}
/// The set of arguments for ServerKey.
/// {@endtemplate}
/// {@macro pulumi_postgresql_server_key_server_key_args_doc}
class ServerKeyArgs {
  /// The URL to a Key Vault Key.
  final pulumi.Input<String> keyVaultKeyId;
  /// The ID of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;

  /// Creates a new [ServerKeyArgs].
  /// [keyVaultKeyId] The URL to a Key Vault Key.
  /// [serverId] The ID of the PostgreSQL Server. Changing this forces a new resource to be created.
  const ServerKeyArgs({
    required this.keyVaultKeyId,
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'serverId': serverId,
    };
  }

  factory ServerKeyArgs.fromMap(Map<String, dynamic> map) {
    return ServerKeyArgs(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
    );
  }
}

