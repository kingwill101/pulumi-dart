// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_data_lake_storage_gen2_linked_service_data_lake_storage_gen2_args_doc}
/// The set of arguments for LinkedServiceDataLakeStorageGen2.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_data_lake_storage_gen2_linked_service_data_lake_storage_gen2_args_doc}
class LinkedServiceDataLakeStorageGen2Args {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Data Lake Storage Gen2 Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`.
  final pulumi.Input<String>? servicePrincipalId;
  /// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
  final pulumi.Input<String>? servicePrincipalKey;
  /// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`.
  final pulumi.Input<String>? storageAccountKey;
  /// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
  ///
  /// > **Note:** If `service_principal_id` is used, `service_principal_key` and `tenant` are also required.
  final pulumi.Input<String>? tenant;
  /// The endpoint for the Azure Data Lake Storage Gen2 service.
  ///
  /// > **Note:** Users should specify only one of the following three authentication strategies: storage account key, managed identity, service principal.
  final pulumi.Input<String> url;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`.
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceDataLakeStorageGen2Args].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [servicePrincipalId] The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`.
  /// [servicePrincipalKey] The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
  /// [storageAccountKey] The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`.
  /// [tenant] The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
  /// [url] The endpoint for the Azure Data Lake Storage Gen2 service.
  /// [useManagedIdentity] Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`.
  LinkedServiceDataLakeStorageGen2Args({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<String>? servicePrincipalKey,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<String>? tenant,
    required pulumi.Output<String> url,
    pulumi.Output<bool>? useManagedIdentity,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<String>(servicePrincipalKey),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      url = pulumi.Input.asInput<String>(url),
      useManagedIdentity = pulumi.Input.asOptionalInput<bool>(useManagedIdentity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'storageAccountKey': ?storageAccountKey,
      'tenant': ?tenant,
      'url': url,
      'useManagedIdentity': ?useManagedIdentity,
    };
  }

  factory LinkedServiceDataLakeStorageGen2Args.fromMap(Map<String, dynamic> map) {
    return LinkedServiceDataLakeStorageGen2Args(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalKey'] as String),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      url: pulumi.Output.create<String>(map['url'] as String),
      useManagedIdentity: map['useManagedIdentity'] == null ? null : pulumi.Output.create<bool>(map['useManagedIdentity'] as bool),
    );
  }
}

