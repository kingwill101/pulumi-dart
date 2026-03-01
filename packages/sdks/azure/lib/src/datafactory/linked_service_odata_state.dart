// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_odata_basic_authentication.dart';

/// Input properties used for looking up and filtering LinkedServiceOdata resources.
class LinkedServiceOdataState {
  /// A map of additional properties to associate with the Data Factory Linked Service OData.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service OData.
  final pulumi.Input<List<String>>? annotations;
  /// A `basic_authentication` block as defined below.
  final pulumi.Input<LinkedServiceOdataBasicAuthentication>? basicAuthentication;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service OData.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service OData.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service OData.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The URL of the OData service endpoint.
  final pulumi.Input<String>? url;

  /// Creates a new [LinkedServiceOdataState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service OData.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service OData.
  /// [basicAuthentication] A `basic_authentication` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service OData.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service OData.
  /// [name] Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service OData.
  /// [url] The URL of the OData service endpoint.
  LinkedServiceOdataState({
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<LinkedServiceOdataBasicAuthentication>? basicAuthentication,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? url,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      basicAuthentication = pulumi.Input.asOptionalInput<LinkedServiceOdataBasicAuthentication>(basicAuthentication),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'basicAuthentication': ?pulumi.Input.mapOptionalInputValue<LinkedServiceOdataBasicAuthentication, Map<String, dynamic>>(basicAuthentication, (value) => value.toMap()),
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'url': ?url,
    };
  }

  factory LinkedServiceOdataState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdataState(
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      basicAuthentication: map['basicAuthentication'] == null ? null : pulumi.Output.create<LinkedServiceOdataBasicAuthentication>(LinkedServiceOdataBasicAuthentication.fromMap((map['basicAuthentication'] as Map).cast<String, dynamic>())),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

