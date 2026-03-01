// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_synapse_key_vault_password.dart';

/// {@template pulumi_datafactory_linked_service_synapse_linked_service_synapse_args_doc}
/// The set of arguments for LinkedServiceSynapse.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_synapse_linked_service_synapse_args_doc}
class LinkedServiceSynapseArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service Synapse.
  ///
  /// The following supported arguments are specific to Data Factory Synapse Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service Synapse.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with the Synapse.
  final pulumi.Input<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service Synapse.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service Synapse.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_password` block as defined below. Use this argument to store Synapse password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  final pulumi.Input<LinkedServiceSynapseKeyVaultPassword>? keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service Synapse. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service Synapse.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceSynapseArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service Synapse.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service Synapse.
  /// [connectionString] The connection string in which to authenticate with the Synapse.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service Synapse.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service Synapse.
  /// [keyVaultPassword] A `key_vault_password` block as defined below. Use this argument to store Synapse password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service Synapse. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service Synapse.
  LinkedServiceSynapseArgs({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> connectionString,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<LinkedServiceSynapseKeyVaultPassword>? keyVaultPassword,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultPassword = pulumi.Input.asOptionalInput<LinkedServiceSynapseKeyVaultPassword>(keyVaultPassword),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSynapseKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceSynapseArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSynapseArgs(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      connectionString: pulumi.Output.create<String>(map['connectionString'] as String),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : pulumi.Output.create<LinkedServiceSynapseKeyVaultPassword>(LinkedServiceSynapseKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

