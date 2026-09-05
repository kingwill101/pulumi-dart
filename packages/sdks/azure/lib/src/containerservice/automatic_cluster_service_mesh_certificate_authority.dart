// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomaticClusterServiceMeshCertificateAuthority {
  /// The certificate chain object name in Azure Key Vault.
  final pulumi.Input<String> certificateChainObjectName;
  /// The intermediate certificate object name in Azure Key Vault.
  final pulumi.Input<String> certificateObjectName;
  /// The intermediate certificate private key object name in Azure Key Vault.
  ///
  /// &gt; **Note:** For more information on [Istio-based service mesh add-on with plug-in CA certificates and how to generate these certificates](https://learn.microsoft.com/en-us/azure/aks/istio-plugin-ca),
  final pulumi.Input<String> keyObjectName;
  /// The resource ID of the Key Vault.
  final pulumi.Input<String> keyVaultId;
  /// The root certificate object name in Azure Key Vault.
  final pulumi.Input<String> rootCertificateObjectName;

  /// Creates a new [AutomaticClusterServiceMeshCertificateAuthority].
  /// [certificateChainObjectName] The certificate chain object name in Azure Key Vault.
  /// [certificateObjectName] The intermediate certificate object name in Azure Key Vault.
  /// [keyObjectName] The intermediate certificate private key object name in Azure Key Vault.
  /// [keyVaultId] The resource ID of the Key Vault.
  /// [rootCertificateObjectName] The root certificate object name in Azure Key Vault.
  const AutomaticClusterServiceMeshCertificateAuthority({
    required this.certificateChainObjectName,
    required this.certificateObjectName,
    required this.keyObjectName,
    required this.keyVaultId,
    required this.rootCertificateObjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateChainObjectName': certificateChainObjectName,
      'certificateObjectName': certificateObjectName,
      'keyObjectName': keyObjectName,
      'keyVaultId': keyVaultId,
      'rootCertificateObjectName': rootCertificateObjectName,
    };
  }

  factory AutomaticClusterServiceMeshCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterServiceMeshCertificateAuthority(
      certificateChainObjectName: pulumi.Input.fromValue(map['certificateChainObjectName'] as String),
      certificateObjectName: pulumi.Input.fromValue(map['certificateObjectName'] as String),
      keyObjectName: pulumi.Input.fromValue(map['keyObjectName'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      rootCertificateObjectName: pulumi.Input.fromValue(map['rootCertificateObjectName'] as String),
    );
  }
}
