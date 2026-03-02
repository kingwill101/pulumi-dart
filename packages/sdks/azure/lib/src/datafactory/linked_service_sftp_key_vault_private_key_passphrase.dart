// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceSftpKeyVaultPrivateKeyPassphrase {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the secret containing the SSH private key passphrase.
  final pulumi.Input<String> secretName;

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
      linkedServiceName: (map['linkedServiceName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

