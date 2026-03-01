// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceSftpKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final String linkedServiceName;
  /// Specifies the name of the secret containing the password.
  final String secretName;

  /// Creates a new [LinkedServiceSftpKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the name of the secret containing the password.
  LinkedServiceSftpKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSftpKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSftpKeyVaultPassword(
      linkedServiceName: map['linkedServiceName'] as String,
      secretName: map['secretName'] as String,
    );
  }
}

