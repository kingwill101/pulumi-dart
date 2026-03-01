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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<LinkedServiceSqlServerKeyVaultConnectionString>? keyVaultConnectionString,
    pulumi.Output<LinkedServiceSqlServerKeyVaultPassword>? keyVaultPassword,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? userName,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultConnectionString = pulumi.Input.asOptionalInput<LinkedServiceSqlServerKeyVaultConnectionString>(keyVaultConnectionString),
      keyVaultPassword = pulumi.Input.asOptionalInput<LinkedServiceSqlServerKeyVaultPassword>(keyVaultPassword),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      keyVaultConnectionString: map['keyVaultConnectionString'] == null ? null : pulumi.Output.create<LinkedServiceSqlServerKeyVaultConnectionString>(LinkedServiceSqlServerKeyVaultConnectionString.fromMap((map['keyVaultConnectionString'] as Map).cast<String, dynamic>())),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : pulumi.Output.create<LinkedServiceSqlServerKeyVaultPassword>(LinkedServiceSqlServerKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

