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

  factory LinkedServiceAzureBlobStorageKeyVaultSasToken.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinkedServiceAzureBlobStorageKeyVaultSasToken(
      linkedServiceName: pulumi.Input.fromValue(
        map['linkedServiceName'] as String,
      ),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
