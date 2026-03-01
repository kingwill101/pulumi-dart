// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

