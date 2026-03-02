// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_azure_search_linked_service_azure_search_args_doc}
/// The set of arguments for LinkedServiceAzureSearch.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_search_linked_service_azure_search_args_doc}
class LinkedServiceAzureSearchArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Search Linked Service:
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
  /// The key of the Azure Search Service.
  final pulumi.Input<String> searchServiceKey;
  /// The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>).
  final pulumi.Input<String> url;

  /// Creates a new [LinkedServiceAzureSearchArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [searchServiceKey] The key of the Azure Search Service.
  /// [url] The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>).
  LinkedServiceAzureSearchArgs({
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
    required this.searchServiceKey,
    required this.url,
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
      'searchServiceKey': searchServiceKey,
      'url': url,
    };
  }

  factory LinkedServiceAzureSearchArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSearchArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      searchServiceKey: (map['searchServiceKey'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

