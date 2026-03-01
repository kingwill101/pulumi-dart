// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceAzureBlobStorageKeyVaultSasToken {
  final String linkedServiceName;
  final String secretName;

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
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

