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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? kustoDatabaseName,
    pulumi.Output<String>? kustoEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<String>? servicePrincipalKey,
    pulumi.Output<String>? tenant,
    pulumi.Output<bool>? useManagedIdentity,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      kustoDatabaseName = pulumi.Input.asOptionalInput<String>(kustoDatabaseName),
      kustoEndpoint = pulumi.Input.asOptionalInput<String>(kustoEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<String>(servicePrincipalKey),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      useManagedIdentity = pulumi.Input.asOptionalInput<bool>(useManagedIdentity);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      kustoDatabaseName: map['kustoDatabaseName'] == null ? null : pulumi.Output.create<String>(map['kustoDatabaseName'] as String),
      kustoEndpoint: map['kustoEndpoint'] == null ? null : pulumi.Output.create<String>(map['kustoEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalKey'] as String),
      tenant: map['tenant'] == null ? null : pulumi.Output.create<String>(map['tenant'] as String),
      useManagedIdentity: map['useManagedIdentity'] == null ? null : pulumi.Output.create<bool>(map['useManagedIdentity'] as bool),
    );
  }
}

