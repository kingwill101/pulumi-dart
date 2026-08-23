// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_odata_basic_authentication.dart';

/// {@template pulumi_datafactory_linked_service_odata_linked_service_odata_args_doc}
/// The set of arguments for LinkedServiceOdata.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_odata_linked_service_odata_args_doc}
class LinkedServiceOdataArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service OData.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service OData.
  final pulumi.Input<List<String>>? annotations;
  /// A `basicAuthentication` block as defined below.
  final pulumi.Input<LinkedServiceOdataBasicAuthentication>? basicAuthentication;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service OData.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service OData.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service OData.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The URL of the OData service endpoint.
  final pulumi.Input<String> url;

  /// Creates a new [LinkedServiceOdataArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service OData.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service OData.
  /// [basicAuthentication] A `basicAuthentication` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service OData.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service OData.
  /// [name] Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service OData.
  /// [url] The URL of the OData service endpoint.
  const LinkedServiceOdataArgs({
    this.additionalProperties,
    this.annotations,
    this.basicAuthentication,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'basicAuthentication': ?pulumi.Input.mapOptionalInputValue<LinkedServiceOdataBasicAuthentication, Map<String, dynamic>>(basicAuthentication, (value) => value.toMap()),
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'url': url,
    };
  }

  factory LinkedServiceOdataArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdataArgs(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      basicAuthentication: (() { final guardedValue = map['basicAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceOdataBasicAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
