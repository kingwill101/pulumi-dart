// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_databricks_instance_pool.dart';
import 'linked_service_azure_databricks_key_vault_password.dart';
import 'linked_service_azure_databricks_new_cluster_config.dart';

/// Input properties used for looking up and filtering LinkedServiceAzureDatabricks resources.
class LinkedServiceAzureDatabricksState {
  /// Authenticate to ADB via an access token.
  final pulumi.Input<String>? accessToken;
  /// The domain URL of the databricks instance.
  final pulumi.Input<String>? adbDomain;
  /// A map of additional properties to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
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

  /// Creates a new [LinkedServiceAzureDatabricksState].
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
  LinkedServiceAzureDatabricksState({
    pulumi.Output<String>? accessToken,
    pulumi.Output<String>? adbDomain,
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? existingClusterId,
    pulumi.Output<LinkedServiceAzureDatabricksInstancePool>? instancePool,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<LinkedServiceAzureDatabricksKeyVaultPassword>? keyVaultPassword,
    pulumi.Output<String>? msiWorkSpaceResourceId,
    pulumi.Output<String>? msiWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<LinkedServiceAzureDatabricksNewClusterConfig>? newClusterConfig,
    pulumi.Output<Map<String, String>>? parameters,
  }) :
      accessToken = pulumi.Input.asOptionalInput<String>(accessToken),
      adbDomain = pulumi.Input.asOptionalInput<String>(adbDomain),
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      existingClusterId = pulumi.Input.asOptionalInput<String>(existingClusterId),
      instancePool = pulumi.Input.asOptionalInput<LinkedServiceAzureDatabricksInstancePool>(instancePool),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultPassword = pulumi.Input.asOptionalInput<LinkedServiceAzureDatabricksKeyVaultPassword>(keyVaultPassword),
      msiWorkSpaceResourceId = pulumi.Input.asOptionalInput<String>(msiWorkSpaceResourceId),
      msiWorkspaceId = pulumi.Input.asOptionalInput<String>(msiWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      newClusterConfig = pulumi.Input.asOptionalInput<LinkedServiceAzureDatabricksNewClusterConfig>(newClusterConfig),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'adbDomain': ?adbDomain,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
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

  factory LinkedServiceAzureDatabricksState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureDatabricksState(
      accessToken: map['accessToken'] == null ? null : pulumi.Output.create<String>(map['accessToken'] as String),
      adbDomain: map['adbDomain'] == null ? null : pulumi.Output.create<String>(map['adbDomain'] as String),
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      existingClusterId: map['existingClusterId'] == null ? null : pulumi.Output.create<String>(map['existingClusterId'] as String),
      instancePool: map['instancePool'] == null ? null : pulumi.Output.create<LinkedServiceAzureDatabricksInstancePool>(LinkedServiceAzureDatabricksInstancePool.fromMap((map['instancePool'] as Map).cast<String, dynamic>())),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      keyVaultPassword: map['keyVaultPassword'] == null ? null : pulumi.Output.create<LinkedServiceAzureDatabricksKeyVaultPassword>(LinkedServiceAzureDatabricksKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>())),
      msiWorkSpaceResourceId: map['msiWorkSpaceResourceId'] == null ? null : pulumi.Output.create<String>(map['msiWorkSpaceResourceId'] as String),
      msiWorkspaceId: map['msiWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['msiWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      newClusterConfig: map['newClusterConfig'] == null ? null : pulumi.Output.create<LinkedServiceAzureDatabricksNewClusterConfig>(LinkedServiceAzureDatabricksNewClusterConfig.fromMap((map['newClusterConfig'] as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

