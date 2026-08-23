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
  /// &gt; **Note:** If `servicePrincipalId` is used, `servicePrincipalKey` and `tenant` is also required.
  ///
  /// &gt; **Note:** One of Managed Identity authentication and Service Principal authentication must be set.
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
  const LinkedServiceKustoState({
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
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kustoDatabaseName: (() { final guardedValue = map['kustoDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kustoEndpoint: (() { final guardedValue = map['kustoEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useManagedIdentity: (() { final guardedValue = map['useManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
