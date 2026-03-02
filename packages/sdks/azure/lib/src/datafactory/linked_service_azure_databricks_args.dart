// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_databricks_instance_pool.dart';
import 'linked_service_azure_databricks_key_vault_password.dart';
import 'linked_service_azure_databricks_new_cluster_config.dart';

/// {@template pulumi_datafactory_linked_service_azure_databricks_linked_service_azure_databricks_args_doc}
/// The set of arguments for LinkedServiceAzureDatabricks.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_databricks_linked_service_azure_databricks_args_doc}
class LinkedServiceAzureDatabricksArgs {
  /// Authenticate to ADB via an access token.
  final pulumi.Input<String>? accessToken;
  /// The domain URL of the databricks instance.
  final pulumi.Input<String> adbDomain;
  /// A map of additional properties to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The cluster_id of an existing cluster within the linked ADB instance.
  final pulumi.Input<String>? existingClusterId;
  /// Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below.
  final pulumi.Input<LinkedServiceAzureDatabricksInstancePool>? instancePool;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below.
  final pulumi.Input<LinkedServiceAzureDatabricksKeyVaultPassword>? keyVaultPassword;
  final pulumi.Input<String>? msiWorkSpaceResourceId;
  /// Authenticate to ADB via managed service identity.
  final pulumi.Input<String>? msiWorkspaceId;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below.
  final pulumi.Input<LinkedServiceAzureDatabricksNewClusterConfig>? newClusterConfig;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceAzureDatabricksArgs].
  /// [accessToken] Authenticate to ADB via an access token.
  /// [adbDomain] The domain URL of the databricks instance.
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [existingClusterId] The cluster_id of an existing cluster within the linked ADB instance.
  /// [instancePool] Leverages an instance pool within the linked ADB instance as one `instance_pool` block defined below.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [keyVaultPassword] Authenticate to ADB via Azure Key Vault Linked Service as defined in the `key_vault_password` block below.
  /// [msiWorkSpaceResourceId] Optional.
  /// [msiWorkspaceId] Authenticate to ADB via managed service identity.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [newClusterConfig] Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  LinkedServiceAzureDatabricksArgs({
    this.accessToken,
    required this.adbDomain,
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.existingClusterId,
    this.instancePool,
    this.integrationRuntimeName,
    this.keyVaultPassword,
    this.msiWorkSpaceResourceId,
    this.msiWorkspaceId,
    this.name,
    this.newClusterConfig,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'adbDomain': adbDomain,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'existingClusterId': ?existingClusterId,
      'instancePool': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureDatabricksInstancePool, Map<String, dynamic>>(instancePool, (value) => value.toMap()),
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPassword': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureDatabricksKeyVaultPassword, Map<String, dynamic>>(keyVaultPassword, (value) => value.toMap()),
      'msiWorkSpaceResourceId': ?msiWorkSpaceResourceId,
      'msiWorkspaceId': ?msiWorkspaceId,
      'name': ?name,
      'newClusterConfig': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureDatabricksNewClusterConfig, Map<String, dynamic>>(newClusterConfig, (value) => value.toMap()),
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceAzureDatabricksArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureDatabricksArgs(
      accessToken: map['accessToken'] == null ? null : (map['accessToken']! as String).input(),
      adbDomain: (map['adbDomain'] as String).input(),
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      existingClusterId: map['existingClusterId'] == null ? null : (map['existingClusterId']! as String).input(),
      instancePool: map['instancePool'] == null ? null : (LinkedServiceAzureDatabricksInstancePool.fromMap((map['instancePool']! as Map).cast<String, dynamic>())).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName']! as String).input(),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : (LinkedServiceAzureDatabricksKeyVaultPassword.fromMap((map['keyVaultPassword']! as Map).cast<String, dynamic>())).input(),
      msiWorkSpaceResourceId: map['msiWorkSpaceResourceId'] == null ? null : (map['msiWorkSpaceResourceId']! as String).input(),
      msiWorkspaceId: map['msiWorkspaceId'] == null ? null : (map['msiWorkspaceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      newClusterConfig: map['newClusterConfig'] == null ? null : (LinkedServiceAzureDatabricksNewClusterConfig.fromMap((map['newClusterConfig']! as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

