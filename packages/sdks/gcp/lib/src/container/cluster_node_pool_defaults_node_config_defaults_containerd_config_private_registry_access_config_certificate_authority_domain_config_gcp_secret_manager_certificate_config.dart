// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig {
  /// URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  final String secretUri;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig].
  /// [secretUri] URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUri': secretUri,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig(
      secretUri: map['secretUri'] as String,
    );
  }
}

