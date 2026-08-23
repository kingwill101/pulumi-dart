// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_sql_database_key_vault_connection_string.dart';
import 'linked_service_azure_sql_database_key_vault_password.dart';

/// {@template pulumi_datafactory_linked_service_azure_sql_database_linked_service_azure_sql_database_args_doc}
/// The set of arguments for LinkedServiceAzureSqlDatabase.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_sql_database_linked_service_azure_sql_database_args_doc}
class LinkedServiceAzureSqlDatabaseArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  final pulumi.Input<String>? connectionString;
  /// The name of a User-assigned Managed Identity. Use this argument to authenticate against the linked resource using a User-assigned Managed Identity.
  final pulumi.Input<String>? credentialName;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `keyVaultConnectionString` block as defined below. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  final pulumi.Input<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString>? keyVaultConnectionString;
  /// A `keyVaultPassword` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceAzureSqlDatabaseKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The service principal id in which to authenticate against the Azure SQL Database. Required if `servicePrincipalKey` is set.
  final pulumi.Input<String>? servicePrincipalId;
  /// The service principal key in which to authenticate against the Azure SQL Database. Required if `servicePrincipalId` is set.
  final pulumi.Input<String>? servicePrincipalKey;
  /// The tenant id or name in which to authenticate against the Azure SQL Database.
  final pulumi.Input<String>? tenantId;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `servicePrincipalId` and `servicePrincipalKey`
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceAzureSqlDatabaseArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database.
  /// [connectionString] The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  /// [credentialName] The name of a User-assigned Managed Identity. Use this argument to authenticate against the linked resource using a User-assigned Managed Identity.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service Azure SQL Database.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database.
  /// [keyVaultConnectionString] A `keyVaultConnectionString` block as defined below. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connectionString` or `keyVaultConnectionString` is required.
  /// [keyVaultPassword] A `keyVaultPassword` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service Azure SQL Database.
  /// [servicePrincipalId] The service principal id in which to authenticate against the Azure SQL Database. Required if `servicePrincipalKey` is set.
  /// [servicePrincipalKey] The service principal key in which to authenticate against the Azure SQL Database. Required if `servicePrincipalId` is set.
  /// [tenantId] The tenant id or name in which to authenticate against the Azure SQL Database.
  /// [useManagedIdentity] Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `servicePrincipalId` and `servicePrincipalKey`
  const LinkedServiceAzureSqlDatabaseArgs({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    this.credentialName,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.keyVaultConnectionString,
    this.keyVaultPassword,
    this.name,
    this.parameters,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenantId,
    this.useManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'credentialName': ?credentialName,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultConnectionString': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString, Map<String, dynamic>>(keyVaultConnectionString, (value) => value.toMap()),
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureSqlDatabaseKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'tenantId': ?tenantId,
      'useManagedIdentity': ?useManagedIdentity,
    };
  }

  factory LinkedServiceAzureSqlDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSqlDatabaseArgs(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultConnectionString: (() { final guardedValue = map['keyVaultConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultPassword: (() { final guardedValue = map['keyVaultPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useManagedIdentity: (() { final guardedValue = map['useManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
