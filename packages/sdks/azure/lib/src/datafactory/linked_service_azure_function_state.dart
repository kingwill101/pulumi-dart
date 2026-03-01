// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_function_key_vault_key.dart';

/// Input properties used for looking up and filtering LinkedServiceAzureFunction resources.
class LinkedServiceAzureFunctionState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Function Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
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
  final pulumi.Input<String>? url;

  /// Creates a new [LinkedServiceAzureFunctionState].
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
  LinkedServiceAzureFunctionState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? key,
    pulumi.Output<LinkedServiceAzureFunctionKeyVaultKey>? keyVaultKey,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? url,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      key = pulumi.Input.asOptionalInput<String>(key),
      keyVaultKey = pulumi.Input.asOptionalInput<LinkedServiceAzureFunctionKeyVaultKey>(keyVaultKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'key': ?key,
      'keyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureFunctionKeyVaultKey, Map<String, dynamic>>(keyVaultKey, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'url': ?url,
    };
  }

  factory LinkedServiceAzureFunctionState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureFunctionState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      keyVaultKey: map['keyVaultKey'] == null ? null : pulumi.Output.create<LinkedServiceAzureFunctionKeyVaultKey>(LinkedServiceAzureFunctionKeyVaultKey.fromMap((map['keyVaultKey'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

