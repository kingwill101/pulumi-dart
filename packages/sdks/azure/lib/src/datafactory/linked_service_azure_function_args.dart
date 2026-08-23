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
  /// The system key of the Azure Function. Exactly one of either `key` or `keyVaultKey` is required
  final pulumi.Input<String>? key;
  /// A `keyVaultKey` block as defined below. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `keyVaultKey` is required.
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
  /// [key] The system key of the Azure Function. Exactly one of either `key` or `keyVaultKey` is required
  /// [keyVaultKey] A `keyVaultKey` block as defined below. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either `key` or `keyVaultKey` is required.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [url] The url of the Azure Function.
  const LinkedServiceAzureFunctionArgs({
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
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKey: (() { final guardedValue = map['keyVaultKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceAzureFunctionKeyVaultKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
