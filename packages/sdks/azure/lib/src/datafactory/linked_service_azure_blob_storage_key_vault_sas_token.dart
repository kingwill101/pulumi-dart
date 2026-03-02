// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceAzureBlobStorageKeyVaultSasToken {
  final pulumi.Input<String> linkedServiceName;
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceAzureBlobStorageKeyVaultSasToken].
  /// [linkedServiceName] Required.
  /// [secretName] Required.
  LinkedServiceAzureBlobStorageKeyVaultSasToken({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureBlobStorageKeyVaultSasToken.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureBlobStorageKeyVaultSasToken(
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

