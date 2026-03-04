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
  final pulumi.Input<LinkedServiceAzureDatabricksKeyVaultPassword>?
  keyVaultPassword;
  final pulumi.Input<String>? msiWorkSpaceResourceId;

  /// Authenticate to ADB via managed service identity.
  final pulumi.Input<String>? msiWorkspaceId;

  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;

  /// Creates new clusters within the linked ADB instance as defined in the `new_cluster_config` block below.
  final pulumi.Input<LinkedServiceAzureDatabricksNewClusterConfig>?
  newClusterConfig;

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
    this.accessToken,
    this.adbDomain,
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
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
      'adbDomain': ?adbDomain,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'existingClusterId': ?existingClusterId,
      'instancePool':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceAzureDatabricksInstancePool,
            Map<String, dynamic>
          >(instancePool, (value) => value.toMap()),
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPassword':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceAzureDatabricksKeyVaultPassword,
            Map<String, dynamic>
          >(keyVaultPassword, (value) => value.toMap()),
      'msiWorkSpaceResourceId': ?msiWorkSpaceResourceId,
      'msiWorkspaceId': ?msiWorkspaceId,
      'name': ?name,
      'newClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceAzureDatabricksNewClusterConfig,
            Map<String, dynamic>
          >(newClusterConfig, (value) => value.toMap()),
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceAzureDatabricksState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureDatabricksState(
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adbDomain: (() {
        final guardedValue = map['adbDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dataFactoryId: (() {
        final guardedValue = map['dataFactoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      existingClusterId: (() {
        final guardedValue = map['existingClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instancePool: (() {
        final guardedValue = map['instancePool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceAzureDatabricksInstancePool.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      integrationRuntimeName: (() {
        final guardedValue = map['integrationRuntimeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultPassword: (() {
        final guardedValue = map['keyVaultPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceAzureDatabricksKeyVaultPassword.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      msiWorkSpaceResourceId: (() {
        final guardedValue = map['msiWorkSpaceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      msiWorkspaceId: (() {
        final guardedValue = map['msiWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      newClusterConfig: (() {
        final guardedValue = map['newClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceAzureDatabricksNewClusterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
