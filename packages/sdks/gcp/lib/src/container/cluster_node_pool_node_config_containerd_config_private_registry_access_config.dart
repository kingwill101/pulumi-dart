// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  final pulumi.Input<List<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>>? certificateAuthorityDomainConfigs;
  /// Enables private registry config. If set to false, all other fields in this object must not be set.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  /// [enabled] Enables private registry config. If set to false, all other fields in this object must not be set.
  const ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>, List<Map<String, dynamic>>>(certificateAuthorityDomainConfigs, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: (() { final guardedValue = map['certificateAuthorityDomainConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(guardedValue, (value) => ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
