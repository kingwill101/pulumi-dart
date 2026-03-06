// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceAzureSqlDatabaseKeyVaultPassword {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Server password.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceAzureSqlDatabaseKeyVaultPassword].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Server password.
  const LinkedServiceAzureSqlDatabaseKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSqlDatabaseKeyVaultPassword(
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}

