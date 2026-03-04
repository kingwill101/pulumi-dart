// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedServicePostgresql resources.
class LinkedServicePostgresqlState {
  /// A map of additional properties to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<Map<String, String>>? additionalProperties;

  /// List of tags that can be used for describing the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<List<String>>? annotations;

  /// The connection string in which to authenticate with PostgreSQL.
  final pulumi.Input<String>? connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;

  /// The description for the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<String>? description;

  /// The integration runtime reference to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<String>? integrationRuntimeName;

  /// Specifies the name of the Data Factory Linked Service PostgreSQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;

  /// A map of parameters to associate with the Data Factory Linked Service PostgreSQL.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServicePostgresqlState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service PostgreSQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service PostgreSQL.
  /// [connectionString] The connection string in which to authenticate with PostgreSQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service PostgreSQL.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service PostgreSQL.
  /// [name] Specifies the name of the Data Factory Linked Service PostgreSQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service PostgreSQL.
  LinkedServicePostgresqlState({
    this.additionalProperties,
    this.annotations,
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
      'connectionString': ?connectionString,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServicePostgresqlState.fromMap(Map<String, dynamic> map) {
    return LinkedServicePostgresqlState(
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
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFactoryId: (() {
        final guardedValue = map['dataFactoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
