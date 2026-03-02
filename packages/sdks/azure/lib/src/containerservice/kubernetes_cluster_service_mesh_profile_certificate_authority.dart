// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterServiceMeshProfileCertificateAuthority {
  /// The certificate chain object name in Azure Key Vault.
  final pulumi.Input<String> certChainObjectName;
  /// The intermediate certificate object name in Azure Key Vault.
  final pulumi.Input<String> certObjectName;
  /// The intermediate certificate private key object name in Azure Key Vault.
  ///
  /// > **Note:** For more information on [Istio-based service mesh add-on with plug-in CA certificates and how to generate these certificates](https://learn.microsoft.com/en-us/azure/aks/istio-plugin-ca),
  final pulumi.Input<String> keyObjectName;
  /// The resource ID of the Key Vault.
  final pulumi.Input<String> keyVaultId;
  /// The root certificate object name in Azure Key Vault.
  final pulumi.Input<String> rootCertObjectName;

  /// Creates a new [KubernetesClusterServiceMeshProfileCertificateAuthority].
  /// [certChainObjectName] The certificate chain object name in Azure Key Vault.
  /// [certObjectName] The intermediate certificate object name in Azure Key Vault.
  /// [keyObjectName] The intermediate certificate private key object name in Azure Key Vault.
  /// [keyVaultId] The resource ID of the Key Vault.
  /// [rootCertObjectName] The root certificate object name in Azure Key Vault.
  KubernetesClusterServiceMeshProfileCertificateAuthority({
    required this.certChainObjectName,
    required this.certObjectName,
    required this.keyObjectName,
    required this.keyVaultId,
    required this.rootCertObjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChainObjectName': certChainObjectName,
      'certObjectName': certObjectName,
      'keyObjectName': keyObjectName,
      'keyVaultId': keyVaultId,
      'rootCertObjectName': rootCertObjectName,
    };
  }

  factory KubernetesClusterServiceMeshProfileCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterServiceMeshProfileCertificateAuthority(
      certChainObjectName: (map['certChainObjectName'] as String).input(),
      certObjectName: (map['certObjectName'] as String).input(),
      keyObjectName: (map['keyObjectName'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      rootCertObjectName: (map['rootCertObjectName'] as String).input(),
    );
  }
}

