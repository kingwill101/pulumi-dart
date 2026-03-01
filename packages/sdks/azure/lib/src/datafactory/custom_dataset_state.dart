// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dataset_linked_service.dart';

/// Input properties used for looking up and filtering CustomDataset resources.
class CustomDatasetState {
  /// A map of additional properties to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `linked_service` block as defined below.
  final pulumi.Input<CustomDatasetLinkedService>? linkedService;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A JSON object that contains the schema of the Data Factory Dataset.
  final pulumi.Input<String>? schemaJson;
  /// The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// A JSON object that contains the properties of the Data Factory Dataset. Refer to
  /// datafactory/models.go for the shape of the expected JSON. For example, the JSON object for `AzureBlob`-typed Dataset will be unmarshaled into `AzureBlobDatasetTypeProperties struct`.
  final pulumi.Input<String>? typePropertiesJson;

  /// Creates a new [CustomDatasetState].
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
  CustomDatasetState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<CustomDatasetLinkedService>? linkedService,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? schemaJson,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typePropertiesJson,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedService = pulumi.Input.asOptionalInput<CustomDatasetLinkedService>(linkedService),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schemaJson = pulumi.Input.asOptionalInput<String>(schemaJson),
      type = pulumi.Input.asOptionalInput<String>(type),
      typePropertiesJson = pulumi.Input.asOptionalInput<String>(typePropertiesJson);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedService': ?pulumi.Input.mapOptionalInputValue<CustomDatasetLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'schemaJson': ?schemaJson,
      'type': ?type,
      'typePropertiesJson': ?typePropertiesJson,
    };
  }

  factory CustomDatasetState.fromMap(Map<String, dynamic> map) {
    return CustomDatasetState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      linkedService: map['linkedService'] == null ? null : pulumi.Output.create<CustomDatasetLinkedService>(CustomDatasetLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schemaJson: map['schemaJson'] == null ? null : pulumi.Output.create<String>(map['schemaJson'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typePropertiesJson: map['typePropertiesJson'] == null ? null : pulumi.Output.create<String>(map['typePropertiesJson'] as String),
    );
  }
}

