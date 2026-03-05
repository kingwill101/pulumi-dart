// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSecretArchive {
  /// The resource ID of the key vault to archive the secrets of the cluster.
  final pulumi.Input<String> keyVaultId;
  /// The indicator if the specified key vault should be used to archive the secrets of the cluster.
  final pulumi.Input<String>? useKeyVault;

  /// Creates a new [ClusterSecretArchive].
  /// [keyVaultId] The resource ID of the key vault to archive the secrets of the cluster.
  /// [useKeyVault] The indicator if the specified key vault should be used to archive the secrets of the cluster.
  ClusterSecretArchive({
    required this.keyVaultId,
    this.useKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'useKeyVault': ?useKeyVault,
    };
  }

  factory ClusterSecretArchive.fromMap(Map<String, dynamic> map) {
    return ClusterSecretArchive(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      useKeyVault: (() { final guardedValue = map['useKeyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

