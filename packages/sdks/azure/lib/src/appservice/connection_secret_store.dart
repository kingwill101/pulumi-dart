// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSecretStore {
  /// The key vault id to store secret.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [ConnectionSecretStore].
  /// [keyVaultId] The key vault id to store secret.
  ConnectionSecretStore({
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
    };
  }

  factory ConnectionSecretStore.fromMap(Map<String, dynamic> map) {
    return ConnectionSecretStore(
      keyVaultId: (map['keyVaultId'] as String).input(),
    );
  }
}

