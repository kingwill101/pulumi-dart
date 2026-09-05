// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_key_vault_secrets_provider_secret_identity.dart';

class KubernetesClusterKeyVaultSecretsProvider {
  /// An `secretIdentity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterKeyVaultSecretsProviderSecretIdentity>?>? secretIdentities;
  /// Should the secret store CSI driver on the AKS cluster be enabled?
  final pulumi.Input<bool?>? secretRotationEnabled;
  /// The interval to poll for secret rotation. This attribute is only set when `secretRotationEnabled` is true. Defaults to `2m`.
  ///
  /// &gt; **Note:** To enable`keyVaultSecretsProvider` either `secretRotationEnabled` or `secretRotationInterval` must be specified.
  final pulumi.Input<String?>? secretRotationInterval;

  /// Creates a new [KubernetesClusterKeyVaultSecretsProvider].
  /// [secretIdentities] An `secretIdentity` block is exported. The exported attributes are defined below.
  /// [secretRotationEnabled] Should the secret store CSI driver on the AKS cluster be enabled?
  /// [secretRotationInterval] The interval to poll for secret rotation. This attribute is only set when `secretRotationEnabled` is true. Defaults to `2m`.
  const KubernetesClusterKeyVaultSecretsProvider({
    this.secretIdentities,
    this.secretRotationEnabled,
    this.secretRotationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretIdentities': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterKeyVaultSecretsProviderSecretIdentity>, List<Map<String, dynamic>>>(secretIdentities, (value) => pulumi.Input.encodeList<KubernetesClusterKeyVaultSecretsProviderSecretIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretRotationEnabled': ?secretRotationEnabled,
      'secretRotationInterval': ?secretRotationInterval,
    };
  }

  factory KubernetesClusterKeyVaultSecretsProvider.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKeyVaultSecretsProvider(
      secretIdentities: (() { final guardedValue = map['secretIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterKeyVaultSecretsProviderSecretIdentity>(guardedValue, (value) => KubernetesClusterKeyVaultSecretsProviderSecretIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretRotationEnabled: (() { final guardedValue = map['secretRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRotationInterval: (() { final guardedValue = map['secretRotationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
