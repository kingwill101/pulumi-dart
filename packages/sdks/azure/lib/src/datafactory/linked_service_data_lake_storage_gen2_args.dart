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
  final pulumi.Input<Map<String, String>?>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>?>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String?>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String?>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storageAccountKey` and `useManagedIdentity`.
  final pulumi.Input<String?>? servicePrincipalId;
  /// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
  final pulumi.Input<String?>? servicePrincipalKey;
  /// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `servicePrincipalId`, `servicePrincipalKey`, `tenant` and `useManagedIdentity`.
  final pulumi.Input<String?>? storageAccountKey;
  /// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
  ///
  /// &gt; **Note:** If `servicePrincipalId` is used, `servicePrincipalKey` and `tenant` are also required.
  final pulumi.Input<String?>? tenant;
  /// The endpoint for the Azure Data Lake Storage Gen2 service.
  ///
  /// &gt; **Note:** Users should specify only one of the following three authentication strategies: storage account key, managed identity, service principal.
  final pulumi.Input<String> url;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `servicePrincipalId`, `servicePrincipalKey`, `tenant` and `storageAccountKey`.
  final pulumi.Input<bool?>? useManagedIdentity;

  /// Creates a new [LinkedServiceDataLakeStorageGen2Args].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [servicePrincipalId] The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storageAccountKey` and `useManagedIdentity`.
  /// [servicePrincipalKey] The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
  /// [storageAccountKey] The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `servicePrincipalId`, `servicePrincipalKey`, `tenant` and `useManagedIdentity`.
  /// [tenant] The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
  /// [url] The endpoint for the Azure Data Lake Storage Gen2 service.
  /// [useManagedIdentity] Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `servicePrincipalId`, `servicePrincipalKey`, `tenant` and `storageAccountKey`.
  const LinkedServiceDataLakeStorageGen2Args({
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.storageAccountKey,
    this.tenant,
    required this.url,
    this.useManagedIdentity,
  });

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
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      useManagedIdentity: (() { final guardedValue = map['useManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
