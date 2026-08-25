// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HiveDatabase resources.
class HiveDatabaseState {
  /// Hive catalog where the database to create is located.
  final pulumi.Input<String?>? catalog;
  /// Output only. The creation time of the database.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the database.
  final pulumi.Input<String?>? description;
  /// Cloud Storage location path where the database exists. If unspecified, the database will be stored in the catalog location.
  /// Format: gs://bucket/path/to/database
  final pulumi.Input<String?>? locationUri;
  /// Database to create.
  final pulumi.Input<String?>? name;
  /// Additional parameters associated with the database.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. The update time of the database.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [HiveDatabaseState].
  /// [catalog] Hive catalog where the database to create is located.
  /// [createTime] Output only. The creation time of the database.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the database.
  /// [locationUri] Cloud Storage location path where the database exists. If unspecified, the database will be stored in the catalog location.
  /// [name] Database to create.
  /// [parameters] Additional parameters associated with the database.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. The update time of the database.
  const HiveDatabaseState({
    this.catalog,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.locationUri,
    this.name,
    this.parameters,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'locationUri': ?locationUri,
      'name': ?name,
      'parameters': ?parameters,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory HiveDatabaseState.fromMap(Map<String, dynamic> map) {
    return HiveDatabaseState(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
