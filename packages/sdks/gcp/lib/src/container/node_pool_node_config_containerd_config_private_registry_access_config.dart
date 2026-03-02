// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final pulumi.Input<List<NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>>? certificateAuthorityDomainConfigs;
  /// Whether or not private registries are configured.
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] Parameters for configuring CA certificate and domains.
  /// [enabled] Whether or not private registries are configured.
  NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs': ?pulumi.Input.mapOptionalInputValue<List<NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>, List<Map<String, dynamic>>>(certificateAuthorityDomainConfigs, (value) => pulumi.Input.encodeList<NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: map['certificateAuthorityDomainConfigs'] == null ? null : (pulumi.Input.decodeList<NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(map['certificateAuthorityDomainConfigs']!, (value) => NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

