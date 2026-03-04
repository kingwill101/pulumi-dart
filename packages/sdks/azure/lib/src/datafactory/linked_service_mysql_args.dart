// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_mysql_linked_service_mysql_args_doc}
/// The set of arguments for LinkedServiceMysql.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_mysql_linked_service_mysql_args_doc}
class LinkedServiceMysqlArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>>? additionalProperties;

  /// List of tags that can be used for describing the Data Factory Linked Service MySQL.
  final pulumi.Input<List<String>>? annotations;

  /// The connection string in which to authenticate with MySQL.
  final pulumi.Input<String> connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;

  /// The description for the Data Factory Linked Service MySQL.
  final pulumi.Input<String>? description;

  /// The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<String>? integrationRuntimeName;

  /// Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;

  /// A map of parameters to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceMysqlArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service MySQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service MySQL.
  /// [connectionString] The connection string in which to authenticate with MySQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service MySQL.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  /// [name] Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service MySQL.
  LinkedServiceMysqlArgs({
    this.additionalProperties,
    this.annotations,
    required this.connectionString,
    required this.dataFactoryId,
    this.description,
    this.integrationRuntimeName,
    this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceMysqlArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceMysqlArgs(
      additionalProperties: (() {
        final guardedValue = map['additionalProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      connectionString: pulumi.Input.fromValue(
        map['connectionString'] as String,
      ),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationRuntimeName: (() {
        final guardedValue = map['integrationRuntimeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
