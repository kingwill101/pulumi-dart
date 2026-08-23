// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceSftpKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the secret containing the password.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceSftpKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the name of the secret containing the password.
  const LinkedServiceSftpKeyVaultPassword({
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
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
