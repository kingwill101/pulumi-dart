// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final pulumi.Input<List<String>> fqdns;
  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final pulumi.Input<ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig> gcpSecretManagerCertificateConfig;

  /// Creates a new [ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfig] Parameters for configuring a certificate hosted in GCP SecretManager.
  const ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'gcpSecretManagerCertificateConfig': pulumi.Input.mapInputValue<ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig, Map<String, dynamic>>(gcpSecretManagerCertificateConfig, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: pulumi.Input.fromValue((map['fqdns'] as List).cast<String>()),
      gcpSecretManagerCertificateConfig: pulumi.Input.fromValue(ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap((map['gcpSecretManagerCertificateConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
