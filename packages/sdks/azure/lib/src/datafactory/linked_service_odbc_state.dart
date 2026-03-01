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
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<LinkedServiceOdbcBasicAuthentication>? basicAuthentication,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? integrationRuntimeName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      basicAuthentication = pulumi.Input.asOptionalInput<LinkedServiceOdbcBasicAuthentication>(basicAuthentication),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

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
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      basicAuthentication: map['basicAuthentication'] == null ? null : pulumi.Output.create<LinkedServiceOdbcBasicAuthentication>(LinkedServiceOdbcBasicAuthentication.fromMap((map['basicAuthentication'] as Map).cast<String, dynamic>())),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : pulumi.Output.create<String>(map['integrationRuntimeName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

