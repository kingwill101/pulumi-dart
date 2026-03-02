// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_odbc_basic_authentication.dart';

/// Input properties used for looking up and filtering LinkedServiceOdbc resources.
class LinkedServiceOdbcState {
  /// A map of additional properties to associate with the Data Factory Linked Service ODBC.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service ODBC.
  final pulumi.Input<List<String>>? annotations;
  /// A `basic_authentication` block as defined below.
  final pulumi.Input<LinkedServiceOdbcBasicAuthentication>? basicAuthentication;
  /// The connection string in which to authenticate with ODBC.
  final pulumi.Input<String>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Linked Service ODBC.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service ODBC.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service ODBC. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service ODBC.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceOdbcState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service ODBC.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service ODBC.
  /// [basicAuthentication] A `basic_authentication` block as defined below.
  /// [connectionString] The connection string in which to authenticate with ODBC.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service ODBC.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service ODBC.
  /// [name] Specifies the name of the Data Factory Linked Service ODBC. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service ODBC.
  LinkedServiceOdbcState({
    this.additionalProperties,
    this.annotations,
    this.basicAuthentication,
    this.connectionString,
    this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'basicAuthentication': ?pulumi.Input.mapOptionalInputValue<LinkedServiceOdbcBasicAuthentication, Map<String, dynamic>>(basicAuthentication, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceOdbcState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdbcState(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      basicAuthentication: map['basicAuthentication'] == null ? null : (LinkedServiceOdbcBasicAuthentication.fromMap((map['basicAuthentication'] as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : (map['integrationRuntimeName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

