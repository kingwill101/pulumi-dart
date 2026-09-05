// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedServiceMysql resources.
class LinkedServiceMysqlState {
  /// A map of additional properties to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>?>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service MySQL.
  final pulumi.Input<List<String>?>? annotations;
  /// The connection string in which to authenticate with MySQL.
  final pulumi.Input<String?>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String?>? dataFactoryId;
  /// The description for the Data Factory Linked Service MySQL.
  final pulumi.Input<String?>? description;
  /// The version of the MySQL driver. Possible values are `V1` and `V2`. Defaults to `V1`.
  ///
  /// &gt; **Note:** New linked services must set `driverVersion` to `V2`.
  final pulumi.Input<String?>? driverVersion;
  /// The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<String?>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// A map of parameters to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>?>? parameters;

  /// Creates a new [LinkedServiceMysqlState].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service MySQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service MySQL.
  /// [connectionString] The connection string in which to authenticate with MySQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service MySQL.
  /// [driverVersion] The version of the MySQL driver. Possible values are `V1` and `V2`. Defaults to `V1`.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  /// [name] Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service MySQL.
  const LinkedServiceMysqlState({
    this.additionalProperties,
    this.annotations,
    this.connectionString,
    this.dataFactoryId,
    this.description,
    this.driverVersion,
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
      'driverVersion': ?driverVersion,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceMysqlState.fromMap(Map<String, dynamic> map) {
    return LinkedServiceMysqlState(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverVersion: (() { final guardedValue = map['driverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationRuntimeName: (() { final guardedValue = map['integrationRuntimeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
