// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specify the name of the database migration project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Name of the database migration service where resource belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceName;
  /// The platform type of the migration source. Possible values are `MongoDb`, `MySQL`, `PostgreSql`, `SQL` and `Unknown`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourcePlatform;
  /// A mapping of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The platform type of the migration target. Possible values are `AzureDbForMySql`, `AzureDbForPostgreSql`, `MongoDb`, `SQLDB`, `SQLMI` and `Unknown`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetPlatform;

  /// Creates a new [ProjectState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specify the name of the database migration project. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created.
  /// [serviceName] Name of the database migration service where resource belongs to. Changing this forces a new resource to be created.
  /// [sourcePlatform] The platform type of the migration source. Possible values are `MongoDb`, `MySQL`, `PostgreSql`, `SQL` and `Unknown`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [targetPlatform] The platform type of the migration target. Possible values are `AzureDbForMySql`, `AzureDbForPostgreSql`, `MongoDb`, `SQLDB`, `SQLMI` and `Unknown`. Changing this forces a new resource to be created.
  const ProjectState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.serviceName,
    this.sourcePlatform,
    this.tags,
    this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serviceName': ?serviceName,
      'sourcePlatform': ?sourcePlatform,
      'tags': ?tags,
      'targetPlatform': ?targetPlatform,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePlatform: (() { final guardedValue = map['sourcePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetPlatform: (() { final guardedValue = map['targetPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
