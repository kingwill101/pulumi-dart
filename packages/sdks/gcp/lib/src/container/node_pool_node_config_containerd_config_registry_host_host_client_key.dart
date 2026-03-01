// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null ? null : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

