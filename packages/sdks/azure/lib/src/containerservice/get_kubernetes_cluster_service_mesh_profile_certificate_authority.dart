// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterServiceMeshProfileCertificateAuthority {
  /// The certificate chain object name in Azure Key Vault.
  final pulumi.Input<String> certChainObjectName;
  /// The intermediate certificate object name in Azure Key Vault.
  final pulumi.Input<String> certObjectName;
  /// The intermediate certificate private key object name in Azure Key Vault.
  final pulumi.Input<String> keyObjectName;
  /// The resource ID of the Key Vault.
  final pulumi.Input<String> keyVaultId;
  /// The root certificate object name in Azure Key Vault.
  final pulumi.Input<String> rootCertObjectName;

  /// Creates a new [GetKubernetesClusterServiceMeshProfileCertificateAuthority].
  /// [certChainObjectName] The certificate chain object name in Azure Key Vault.
  /// [certObjectName] The intermediate certificate object name in Azure Key Vault.
  /// [keyObjectName] The intermediate certificate private key object name in Azure Key Vault.
  /// [keyVaultId] The resource ID of the Key Vault.
  /// [rootCertObjectName] The root certificate object name in Azure Key Vault.
  const GetKubernetesClusterServiceMeshProfileCertificateAuthority({
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

  factory GetKubernetesClusterServiceMeshProfileCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterServiceMeshProfileCertificateAuthority(
      certChainObjectName: pulumi.Input.fromValue(map['certChainObjectName'] as String),
      certObjectName: pulumi.Input.fromValue(map['certObjectName'] as String),
      keyObjectName: pulumi.Input.fromValue(map['keyObjectName'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      rootCertObjectName: pulumi.Input.fromValue(map['rootCertObjectName'] as String),
    );
  }
}

