// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceSftpKeyVaultPrivateKeyContentBase64 {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;

  /// Specifies the name of the secret containing the Base64 encoded SSH private key.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceSftpKeyVaultPrivateKeyContentBase64].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the name of the secret containing the Base64 encoded SSH private key.
  LinkedServiceSftpKeyVaultPrivateKeyContentBase64({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSftpKeyVaultPrivateKeyContentBase64.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinkedServiceSftpKeyVaultPrivateKeyContentBase64(
      linkedServiceName: pulumi.Input.fromValue(
        map['linkedServiceName'] as String,
      ),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
