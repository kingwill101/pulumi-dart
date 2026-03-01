// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudConnectionSecretStore {
  /// The key vault id to store secret.
  final String keyVaultId;

  /// Creates a new [SpringCloudConnectionSecretStore].
  /// [keyVaultId] The key vault id to store secret.
  SpringCloudConnectionSecretStore({
    required this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
    };
  }

  factory SpringCloudConnectionSecretStore.fromMap(Map<String, dynamic> map) {
    return SpringCloudConnectionSecretStore(
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

