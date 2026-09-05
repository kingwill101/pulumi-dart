// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sql_server_key_vault_connection_string.dart';
import 'linked_service_sql_server_key_vault_password.dart';

/// {@template pulumi_datafactory_linked_service_sql_server_linked_service_sql_server_args_doc}
/// The set of arguments for LinkedServiceSqlServer.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_sql_server_linked_service_sql_server_args_doc}
class LinkedServiceSqlServerArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<Map<String, String>?>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service SQL Server.
  final pulumi.Input<List<String>?>? annotations;
  /// The connection string in which to authenticate with the SQL Server. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  final pulumi.Input<String?>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service SQL Server.
  final pulumi.Input<String?>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<String?>? integrationRuntimeName;
  /// A `keyVaultConnectionString` block as defined below. Use this argument to store SQL Server connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  final pulumi.Input<LinkedServiceSqlServerKeyVaultConnectionString?>? keyVaultConnectionString;
  /// A `keyVaultPassword` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceSqlServerKeyVaultPassword?>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service SQL Server. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// A map of parameters to associate with the Data Factory Linked Service SQL Server.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The on-premises Windows authentication user name.
  final pulumi.Input<String?>? userName;

  /// Creates a new [LinkedServiceSqlServerArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service SQL Server.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service SQL Server.
  /// [connectionString] The connection string in which to authenticate with the SQL Server. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service SQL Server.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service SQL Server.
  /// [keyVaultConnectionString] A `keyVaultConnectionString` block as defined below. Use this argument to store SQL Server connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  /// [keyVaultPassword] A `keyVaultPassword` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service SQL Server. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service SQL Server.
  /// [userName] The on-premises Windows authentication user name.
  const LinkedServiceSqlServerArgs({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    required this.dataFactoryId,
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
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultConnectionString': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlServerKeyVaultConnectionString, Map<String, dynamic>>(keyVaultConnectionString, (value) => value.toMap()),
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSqlServerKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'userName': ?userName,
    };
  }

  factory LinkedServiceSqlServerArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSqlServerArgs(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultConnectionString: (() { final guardedValue = map['keyVaultConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceSqlServerKeyVaultConnectionString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultPassword: (() { final guardedValue = map['keyVaultPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceSqlServerKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
