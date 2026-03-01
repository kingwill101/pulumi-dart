// ignore_for_file: unused_element, unnecessary_cast


class AppConnectionSecretStore {
  /// The key vault id to store secret.
  final String keyVaultId;

  /// Creates a new [AppConnectionSecretStore].
  /// [keyVaultId] The key vault id to store secret.
  AppConnectionSecretStore({
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
    };
  }

  factory AppConnectionSecretStore.fromMap(Map<String, dynamic> map) {
    return AppConnectionSecretStore(
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

