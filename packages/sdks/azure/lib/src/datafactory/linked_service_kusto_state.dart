// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedServiceKusto resources.
class LinkedServiceKustoState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Kusto Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// The Kusto Database Name.
  final pulumi.Input<String>? kustoDatabaseName;
  /// The URI of the Kusto Cluster endpoint.
  final pulumi.Input<String>? kustoEndpoint;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The service principal id in which to authenticate against the Kusto Database.
  final pulumi.Input<String>? servicePrincipalId;
  /// The service principal key in which to authenticate against the Kusto Database.
  final pulumi.Input<String>? servicePrincipalKey;
  /// The service principal tenant id or name in which to authenticate against the Kusto Database.
  ///
  /// > **Note:** If `service_principal_id` is used, `service_principal_key` and `tenant` is also required.
  ///
  /// > **Note:** One of Managed Identity authentication and Service Principal authentication must be set.
  final pulumi.Input<String>? tenant;
  /// Whether to use the Data Factory's managed identity to authenticate against the Kusto Database.
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceKustoState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [kustoDatabaseName] The Kusto Database Name.
  /// [kustoEndpoint] The URI of the Kusto Cluster endpoint.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [servicePrincipalId] The service principal id in which to authenticate against the Kusto Database.
  /// [servicePrincipalKey] The service principal key in which to authenticate against the Kusto Database.
  /// [tenant] The service principal tenant id or name in which to authenticate against the Kusto Database.
  /// [useManagedIdentity] Whether to use the Data Factory's managed identity to authenticate against the Kusto Database.
  LinkedServiceKustoState({
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.kustoDatabaseName,
    this.kustoEndpoint,
    this.name,
    this.parameters,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    this.useManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'kustoDatabaseName': ?kustoDatabaseName,
      'kustoEndpoint': ?kustoEndpoint,
      'name': ?name,
      'parameters': ?parameters,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'tenant': ?tenant,
      'useManagedIdentity': ?useManagedIdentity,
    };
  }

  factory LinkedServiceKustoState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceKustoState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      kustoDatabaseName: map['kustoDatabaseName'] == null ? null : (map['kustoDatabaseName'] as String).input(),
      kustoEndpoint: map['kustoEndpoint'] == null ? null : (map['kustoEndpoint'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId'] as String).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (map['servicePrincipalKey'] as String).input(),
      tenant: map['tenant'] == null ? null : (map['tenant'] as String).input(),
      useManagedIdentity: map['useManagedIdentity'] == null ? null : (map['useManagedIdentity'] as bool).input(),
    );
  }
}

