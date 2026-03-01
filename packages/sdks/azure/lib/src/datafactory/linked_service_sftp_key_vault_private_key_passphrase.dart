// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSftpKeyVaultPrivateKeyPassphrase {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the name of the secret containing the SSH private key passphrase.
  final String secretName;

  /// Creates a new [LinkedServiceSftpKeyVaultPrivateKeyPassphrase].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the name of the secret containing the SSH private key passphrase.
  LinkedServiceSftpKeyVaultPrivateKeyPassphrase({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSftpKeyVaultPrivateKeyPassphrase.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSftpKeyVaultPrivateKeyPassphrase(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

