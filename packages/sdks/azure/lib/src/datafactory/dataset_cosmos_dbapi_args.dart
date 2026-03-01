// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_cosmos_dbapi_schema_column.dart';

/// {@template pulumi_datafactory_dataset_cosmos_dbapi_dataset_cosmos_dbapi_args_doc}
/// The set of arguments for DatasetCosmosDBApi.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_cosmos_dbapi_dataset_cosmos_dbapi_args_doc}
class DatasetCosmosDBApiArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to Azure Cosmos DB SQL API Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The collection name of the Data Factory Dataset Azure Cosmos DB SQL API.
  final pulumi.Input<String>? collectionName;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetCosmosDBApiSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetCosmosDBApiArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [collectionName] The collection name of the Data Factory Dataset Azure Cosmos DB SQL API.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetCosmosDBApiArgs({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? collectionName,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    required pulumi.Output<String> linkedServiceName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<DatasetCosmosDBApiSchemaColumn>>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      collectionName = pulumi.Input.asOptionalInput<String>(collectionName),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetCosmosDBApiSchemaColumn>>(schemaColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'collectionName': ?collectionName,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'folder': ?folder,
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetCosmosDBApiSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetCosmosDBApiSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetCosmosDBApiArgs.fromMap(Map<String, dynamic> map) {
    return DatasetCosmosDBApiArgs(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      collectionName: map['collectionName'] == null ? null : pulumi.Output.create<String>(map['collectionName'] as String),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      linkedServiceName: pulumi.Output.create<String>(map['linkedServiceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Output.create<List<DatasetCosmosDBApiSchemaColumn>>(pulumi.Input.decodeList<DatasetCosmosDBApiSchemaColumn>(map['schemaColumns'], (value) => DatasetCosmosDBApiSchemaColumn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

