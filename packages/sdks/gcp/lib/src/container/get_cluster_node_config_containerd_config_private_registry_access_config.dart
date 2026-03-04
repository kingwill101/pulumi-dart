// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final pulumi.Input<
    List<
      GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
    >
  >
  certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] Parameters for configuring CA certificate and domains.
  /// [enabled] Whether or not private registries are configured.
  GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    required this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs':
          pulumi.Input.mapInputValue<
            List<
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
            >,
            List<Map<String, dynamic>>
          >(
            certificateAuthorityDomainConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': enabled,
    };
  }

  factory GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
        >(
          map['certificateAuthorityDomainConfigs']!,
          (value) =>
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
