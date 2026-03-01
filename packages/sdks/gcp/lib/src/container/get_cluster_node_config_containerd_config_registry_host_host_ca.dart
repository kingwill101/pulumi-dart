// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  GetClusterNodeConfigContainerdConfigRegistryHostHostCa({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

