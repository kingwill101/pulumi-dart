// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dataset_linked_service.dart';

/// {@template pulumi_datafactory_custom_dataset_custom_dataset_args_doc}
/// The set of arguments for CustomDataset.
/// {@endtemplate}
/// {@macro pulumi_datafactory_custom_dataset_custom_dataset_args_doc}
class CustomDatasetArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `linked_service` block as defined below.
  final pulumi.Input<CustomDatasetLinkedService> linkedService;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A JSON object that contains the schema of the Data Factory Dataset.
  final pulumi.Input<String>? schemaJson;
  /// The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;
  /// A JSON object that contains the properties of the Data Factory Dataset. Refer to
  /// datafactory/models.go for the shape of the expected JSON. For example, the JSON object for `AzureBlob`-typed Dataset will be unmarshaled into `AzureBlobDatasetTypeProperties struct`.
  final pulumi.Input<String> typePropertiesJson;

  /// Creates a new [CustomDatasetArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [dataFactoryId] The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [schemaJson] A JSON object that contains the schema of the Data Factory Dataset.
  /// [type] The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created.
  /// [typePropertiesJson] A JSON object that contains the properties of the Data Factory Dataset. Refer to
  CustomDatasetArgs({
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.description,
    this.folder,
    required this.linkedService,
    this.name,
    this.parameters,
    this.schemaJson,
    required this.type,
    required this.typePropertiesJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedService': pulumi.Input.mapInputValue<CustomDatasetLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'schemaJson': ?schemaJson,
      'type': type,
      'typePropertiesJson': typePropertiesJson,
    };
  }

  factory CustomDatasetArgs.fromMap(Map<String, dynamic> map) {
    return CustomDatasetArgs(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      linkedService: (CustomDatasetLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      schemaJson: map['schemaJson'] == null ? null : (map['schemaJson'] as String).input(),
      type: (map['type'] as String).input(),
      typePropertiesJson: (map['typePropertiesJson'] as String).input(),
    );
  }
}

