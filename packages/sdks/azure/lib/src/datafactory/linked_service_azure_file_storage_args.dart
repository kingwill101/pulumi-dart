// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_file_storage_key_vault_password.dart';

/// {@template pulumi_datafactory_linked_service_azure_file_storage_linked_service_azure_file_storage_args_doc}
/// The set of arguments for LinkedServiceAzureFileStorage.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_file_storage_linked_service_azure_file_storage_args_doc}
class LinkedServiceAzureFileStorageArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure File Storage Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string.
  final pulumi.Input<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The name of the file share.
  final pulumi.Input<String>? fileShare;
  /// The Host name of the server.
  final pulumi.Input<String>? host;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_password` block as defined below. Use this argument to store Azure File Storage password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceAzureFileStorageKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The password to log in the server.
  final pulumi.Input<String>? password;
  /// The user ID to log in the server.
  final pulumi.Input<String>? userId;

  /// Creates a new [LinkedServiceAzureFileStorageArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [fileShare] The name of the file share.
  /// [host] The Host name of the server.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [keyVaultPassword] A `key_vault_password` block as defined below. Use this argument to store Azure File Storage password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [password] The password to log in the server.
  /// [userId] The user ID to log in the server.
  LinkedServiceAzureFileStorageArgs({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> connectionString,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileShare,
    pulumi.Output<String>? host,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<LinkedServiceAzureFileStorageKeyVaultPassword>? keyVaultPassword,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? password,
    pulumi.Output<String>? userId,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileShare = pulumi.Input.asOptionalInput<String>(fileShare),
      host = pulumi.Input.asOptionalInput<String>(host),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultPassword = pulumi.Input.asOptionalInput<LinkedServiceAzureFileStorageKeyVaultPassword>(keyVaultPassword),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      password = pulumi.Input.asOptionalInput<String>(password),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'fileShare': ?fileShare,
      'host': ?host,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureFileStorageKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'password': ?password,
      'userId': ?userId,
    };
  }

  factory LinkedServiceAzureFileStorageArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureFileStorageArgs(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      connectionString: pulumi.Output.create<String>(map['connectionString'] as String),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileShare: map['fileShare'] == null ? null : pulumi.Output.create<String>(map['fileShare'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : pulumi.Output.create<LinkedServiceAzureFileStorageKeyVaultPassword>(LinkedServiceAzureFileStorageKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

