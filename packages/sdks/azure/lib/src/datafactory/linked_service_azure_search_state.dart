// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedServiceAzureSearch resources.
class LinkedServiceAzureSearchState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Search Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The encrypted credential to connect to Azure Search Service.
  final pulumi.Input<String>? encryptedCredential;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The key of the Azure Search Service.
  final pulumi.Input<String>? searchServiceKey;
  /// The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>).
  final pulumi.Input<String>? url;

  /// Creates a new [LinkedServiceAzureSearchState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [encryptedCredential] The encrypted credential to connect to Azure Search Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [searchServiceKey] The key of the Azure Search Service.
  /// [url] The URL of the Search Service endpoint (e.g. <https://{searchServiceName}.search.windows.net>).
  LinkedServiceAzureSearchState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptedCredential,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? searchServiceKey,
    pulumi.Output<String>? url,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptedCredential = pulumi.Input.asOptionalInput<String>(encryptedCredential),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      searchServiceKey = pulumi.Input.asOptionalInput<String>(searchServiceKey),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'searchServiceKey': ?searchServiceKey,
      'url': ?url,
    };
  }

  factory LinkedServiceAzureSearchState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureSearchState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptedCredential: map['encryptedCredential'] == null ? null : pulumi.Output.create<String>(map['encryptedCredential'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      searchServiceKey: map['searchServiceKey'] == null ? null : pulumi.Output.create<String>(map['searchServiceKey'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

