// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_custom_service_integration_runtime.dart';

/// Input properties used for looking up and filtering LinkedCustomService resources.
class LinkedCustomServiceState {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// An `integration_runtime` block as defined below.
  final pulumi.Input<LinkedCustomServiceIntegrationRuntime>? integrationRuntime;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Please refer to Microsoft.DataFactory factories/linkedservices for the type values syntax. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// A JSON object that contains the properties of the Data Factory Linked Service. Refer to
  /// datafactory/models.go for the shape of the expected JSON. For example, the JSON object for `AzureBlobStorage`-typed Linked Service will be unmarshaled into `AzureBlobStorageLinkedServiceTypeProperties struct`.
  final pulumi.Input<String>? typePropertiesJson;

  /// Creates a new [LinkedCustomServiceState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntime] An `integration_runtime` block as defined below.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [type] The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Please refer to Microsoft.DataFactory factories/linkedservices for the type values syntax. Changing this forces a new resource to be created.
  /// [typePropertiesJson] A JSON object that contains the properties of the Data Factory Linked Service. Refer to
  LinkedCustomServiceState({
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.integrationRuntime,
    this.name,
    this.parameters,
    this.type,
    this.typePropertiesJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntime': ?pulumi.Input.mapOptionalInputValue<LinkedCustomServiceIntegrationRuntime, Map<String, dynamic>>(integrationRuntime, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'type': ?type,
      'typePropertiesJson': ?typePropertiesJson,
    };
  }

  factory LinkedCustomServiceState.fromMap(Map<String, dynamic> map) {
    return LinkedCustomServiceState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      integrationRuntime: map['integrationRuntime'] == null ? null : (LinkedCustomServiceIntegrationRuntime.fromMap((map['integrationRuntime']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typePropertiesJson: map['typePropertiesJson'] == null ? null : (map['typePropertiesJson']! as String).input(),
    );
  }
}

