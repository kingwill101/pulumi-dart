// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig {
  /// URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  final String secretUri;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig].
  /// [secretUri] URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUri': secretUri,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig(
      secretUri: map['secretUri'] as String,
    );
  }
}

