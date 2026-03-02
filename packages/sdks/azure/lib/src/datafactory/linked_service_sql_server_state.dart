// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sql_server_key_vault_connection_string.dart';
import 'linked_service_sql_server_key_vault_password.dart';

/// Input properties used for looking up and filtering LinkedServiceSqlServer resources.
class LinkedServiceSqlServerState {
  /// A map of additional properties to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service SQL Server.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with the SQL Server. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  final pulumi.Input<String>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service SQL Server.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_connection_string` block as defined below. Use this argument to store SQL Server connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  final pulumi.Input<LinkedServiceSqlServerKeyVaultConnectionString>? keyVaultConnectionString;
  /// A `key_vault_password` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceSqlServerKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service SQL Server. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The on-premises Windows authentication user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [LinkedServiceSqlServerState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service SQL Server.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service SQL Server.
  /// [connectionString] The connection string in which to authenticate with the SQL Server. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service SQL Server.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service SQL Server.
  /// [keyVaultConnectionString] A `key_vault_connection_string` block as defined below. Use this argument to store SQL Server connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [keyVaultPassword] A `key_vault_password` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service SQL Server. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service SQL Server.
  /// [userName] The on-premises Windows authentication user name.
  LinkedServiceSqlServerState({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.keyVaultConnectionString,
    this.keyVaultPassword,
    this.name,
    this.parameters,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultConnectionString': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlServerKeyVaultConnectionString, Map<String, dynamic>>(keyVaultConnectionString, (value) => value.toMap()),
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlServerKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'userName': ?userName,
    };
  }

  factory LinkedServiceSqlServerState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlServerState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      keyVaultConnectionString: map['keyVaultConnectionString'] == null ? null : (LinkedServiceSqlServerKeyVaultConnectionString.fromMap((map['keyVaultConnectionString'] as Map).cast<String, dynamic>())).input(),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : (LinkedServiceSqlServerKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

