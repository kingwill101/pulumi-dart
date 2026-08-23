// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceAzureSqlDatabaseKeyVaultConnectionString {
  /// Specifies the name of an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the secret name in Azure Key Vault that stores SQL Server connection string.
  final pulumi.Input<String> secretName;

  /// Creates a new [LinkedServiceAzureSqlDatabaseKeyVaultConnectionString].
  /// [linkedServiceName] Specifies the name of an existing Key Vault Data Factory Linked Service.
  /// [secretName] Specifies the secret name in Azure Key Vault that stores SQL Server connection string.
  const LinkedServiceAzureSqlDatabaseKeyVaultConnectionString({
    required this.linkedServiceName,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName,
      'secretName': secretName,
    };
  }

  factory LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSqlDatabaseKeyVaultConnectionString(
      linkedServiceName: pulumi.Input.fromValue(map['linkedServiceName'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
    );
  }
}
