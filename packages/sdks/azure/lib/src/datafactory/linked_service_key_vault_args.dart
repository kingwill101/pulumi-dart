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
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    required this.keyVaultId,
    this.name,
    this.parameters,
  });

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
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

