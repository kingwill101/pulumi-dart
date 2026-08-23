// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceSqlServerKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Server password.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceSqlServerKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Server password.
  const LinkedServiceSqlServerKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceSqlServerKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlServerKeyVaultPassword(
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
