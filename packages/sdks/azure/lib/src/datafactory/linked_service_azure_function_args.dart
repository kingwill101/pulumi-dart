// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_function_key_vault_key.dart';

/// {@template pulumi_datafactory_linked_service_azure_function_linked_service_azure_function_args_doc}
/// The set of arguments for LinkedServiceAzureFunction.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_function_linked_service_azure_function_args_doc}
class LinkedServiceAzureFunctionArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Function Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// The system key of the Azure Function. Exactly one of either `key` or `key_vault_key` is required
  final pulumi.Input<String>? key;
  /// A `key_vault_key` block as defined below. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `key_vault_key` is required.
  final pulumi.Input<LinkedServiceAzureFunctionKeyVaultKey>? keyVaultKey;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The url of the Azure Function.
  final pulumi.Input<String> url;

  /// Creates a new [LinkedServiceAzureFunctionArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [key] The system key of the Azure Function. Exactly one of either `key` or `key_vault_key` is required
  /// [keyVaultKey] A `key_vault_key` block as defined below. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `key_vault_key` is required.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [url] The url of the Azure Function.
  LinkedServiceAzureFunctionArgs({
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.key,
    this.keyVaultKey,
    this.name,
    this.parameters,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'key': ?key,
      'keyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureFunctionKeyVaultKey, Map<String, dynamic>>(keyVaultKey, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'url': url,
    };
  }

  factory LinkedServiceAzureFunctionArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureFunctionArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      keyVaultKey: map['keyVaultKey'] == null ? null : (LinkedServiceAzureFunctionKeyVaultKey.fromMap((map['keyVaultKey'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      url: (map['url'] as String).input(),
    );
  }
}

