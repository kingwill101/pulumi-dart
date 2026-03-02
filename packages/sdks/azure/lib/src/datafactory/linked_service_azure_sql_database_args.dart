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
  /// The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  final pulumi.Input<String>? connectionString;
  /// The name of a User-assigned Managed Identity. Use this argument to authenticate against the linked resource using a User-assigned Managed Identity.
  final pulumi.Input<String>? credentialName;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_connection_string` block as defined below. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  final pulumi.Input<LinkedServiceAzureSqlDatabaseKeyVaultConnectionString>? keyVaultConnectionString;
  /// A `key_vault_password` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceAzureSqlDatabaseKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service Azure SQL Database.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The service principal id in which to authenticate against the Azure SQL Database. Required if `service_principal_key` is set.
  final pulumi.Input<String>? servicePrincipalId;
  /// The service principal key in which to authenticate against the Azure SQL Database. Required if `service_principal_id` is set.
  final pulumi.Input<String>? servicePrincipalKey;
  /// The tenant id or name in which to authenticate against the Azure SQL Database.
  final pulumi.Input<String>? tenantId;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `service_principal_id` and `service_principal_key`
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceAzureSqlDatabaseArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database.
  /// [connectionString] The connection string in which to authenticate with Azure SQL Database. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [credentialName] The name of a User-assigned Managed Identity. Use this argument to authenticate against the linked resource using a User-assigned Managed Identity.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service Azure SQL Database.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database.
  /// [keyVaultConnectionString] A `key_vault_connection_string` block as defined below. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `connection_string` or `key_vault_connection_string` is required.
  /// [keyVaultPassword] A `key_vault_password` block as defined below. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service Azure SQL Database.
  /// [servicePrincipalId] The service principal id in which to authenticate against the Azure SQL Database. Required if `service_principal_key` is set.
  /// [servicePrincipalKey] The service principal key in which to authenticate against the Azure SQL Database. Required if `service_principal_id` is set.
  /// [tenantId] The tenant id or name in which to authenticate against the Azure SQL Database.
  /// [useManagedIdentity] Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with `service_principal_id` and `service_principal_key`
  LinkedServiceAzureSqlDatabaseArgs({
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
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      credentialName: map['credentialName'] == null ? null : (map['credentialName']! as String).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName']! as String).input(),
      keyVaultConnectionString: map['keyVaultConnectionString'] == null ? null : (LinkedServiceAzureSqlDatabaseKeyVaultConnectionString.fromMap((map['keyVaultConnectionString']! as Map).cast<String, dynamic>())).input(),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : (LinkedServiceAzureSqlDatabaseKeyVaultPassword.fromMap((map['keyVaultPassword']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']! as String).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (map['servicePrincipalKey']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      useManagedIdentity: map['useManagedIdentity'] == null ? null : (map['useManagedIdentity']! as bool).input(),
    );
  }
}

