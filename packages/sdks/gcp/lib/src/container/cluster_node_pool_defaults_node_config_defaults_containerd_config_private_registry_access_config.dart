// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig {
  /// List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>>? certificateAuthorityDomainConfigs;
  /// Enables private registry config. If set to false, all other fields in this object must not be set.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  /// [enabled] Enables private registry config. If set to false, all other fields in this object must not be set.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>, List<Map<String, dynamic>>>(certificateAuthorityDomainConfigs, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: map['certificateAuthorityDomainConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(map['certificateAuthorityDomainConfigs']!, (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

