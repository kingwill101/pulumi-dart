// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_key_vault_linked_service_key_vault_args_doc}
/// The set of arguments for LinkedServiceKeyVault.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_key_vault_linked_service_key_vault_args_doc}
class LinkedServiceKeyVaultArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service Key Vault.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service Key Vault.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service Key Vault.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service Key Vault.
  final pulumi.Input<String>? integrationRuntimeName;
  /// The ID the Azure Key Vault resource.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Data Factory Linked Service Key Vault. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service Key Vault.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceKeyVaultArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service Key Vault.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service Key Vault.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service Key Vault.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service Key Vault.
  /// [keyVaultId] The ID the Azure Key Vault resource.
  /// [name] Specifies the name of the Data Factory Linked Service Key Vault. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service Key Vault.
  LinkedServiceKeyVaultArgs({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    required pulumi.Output<String> keyVaultId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultId': keyVaultId,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceKeyVaultArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceKeyVaultArgs(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

