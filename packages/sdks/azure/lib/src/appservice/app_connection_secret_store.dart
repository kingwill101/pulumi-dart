// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppConnectionSecretStore {
  /// The key vault id to store secret.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [AppConnectionSecretStore].
  /// [keyVaultId] The key vault id to store secret.
  AppConnectionSecretStore({required this.keyVaultId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyVaultId': keyVaultId};
  }

  factory AppConnectionSecretStore.fromMap(Map<String, dynamic> map) {
    return AppConnectionSecretStore(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
    );
  }
}
