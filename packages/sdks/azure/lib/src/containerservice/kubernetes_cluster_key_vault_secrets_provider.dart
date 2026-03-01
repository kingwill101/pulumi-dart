// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_key_vault_secrets_provider_secret_identity.dart';

class KubernetesClusterKeyVaultSecretsProvider {
  /// An `secret_identity` block is exported. The exported attributes are defined below.
  final List<KubernetesClusterKeyVaultSecretsProviderSecretIdentity>? secretIdentities;
  /// Should the secret store CSI driver on the AKS cluster be enabled?
  final bool? secretRotationEnabled;
  /// The interval to poll for secret rotation. This attribute is only set when `secret_rotation_enabled` is true. Defaults to `2m`.
  ///
  /// > **Note:** To enable`key_vault_secrets_provider` either `secret_rotation_enabled` or `secret_rotation_interval` must be specified.
  final String? secretRotationInterval;

  /// Creates a new [KubernetesClusterKeyVaultSecretsProvider].
  /// [secretIdentities] An `secret_identity` block is exported. The exported attributes are defined below.
  /// [secretRotationEnabled] Should the secret store CSI driver on the AKS cluster be enabled?
  /// [secretRotationInterval] The interval to poll for secret rotation. This attribute is only set when `secret_rotation_enabled` is true. Defaults to `2m`.
  KubernetesClusterKeyVaultSecretsProvider({
    this.secretIdentities,
    this.secretRotationEnabled,
    this.secretRotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretIdentities': ?secretIdentities == null ? null : pulumi.Input.encodeList<KubernetesClusterKeyVaultSecretsProviderSecretIdentity, Map<String, dynamic>>(secretIdentities!, (value) => value.toMap()),
      'secretRotationEnabled': ?secretRotationEnabled,
      'secretRotationInterval': ?secretRotationInterval,
    };
  }

  factory KubernetesClusterKeyVaultSecretsProvider.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKeyVaultSecretsProvider(
      secretIdentities: map['secretIdentities'] == null ? null : pulumi.Input.decodeList<KubernetesClusterKeyVaultSecretsProviderSecretIdentity>(map['secretIdentities'], (value) => KubernetesClusterKeyVaultSecretsProviderSecretIdentity.fromMap((value as Map).cast<String, dynamic>())),
      secretRotationEnabled: map['secretRotationEnabled'] == null ? null : map['secretRotationEnabled'] as bool,
      secretRotationInterval: map['secretRotationInterval'] == null ? null : map['secretRotationInterval'] as String,
    );
  }
}

