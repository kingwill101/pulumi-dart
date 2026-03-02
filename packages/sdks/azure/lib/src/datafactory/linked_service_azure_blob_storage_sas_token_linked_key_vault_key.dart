// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores the SAS token.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores the SAS token.
  LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey(
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

