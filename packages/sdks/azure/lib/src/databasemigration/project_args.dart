// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasemigration_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_databasemigration_project_project_args_doc}
class ProjectArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specify the name of the database migration project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the database migration service where resource belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceName;
  /// The platform type of the migration source. Possible values are `MongoDb`, `MySQL`, `PostgreSql`, `SQL` and `Unknown`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourcePlatform;
  /// A mapping of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The platform type of the migration target. Possible values are `AzureDbForMySql`, `AzureDbForPostgreSql`, `MongoDb`, `SQLDB`, `SQLMI` and `Unknown`. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetPlatform;

  /// Creates a new [ProjectArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specify the name of the database migration project. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group in which to create the database migration project. Changing this forces a new resource to be created.
  /// [serviceName] Name of the database migration service where resource belongs to. Changing this forces a new resource to be created.
  /// [sourcePlatform] The platform type of the migration source. Possible values are `MongoDb`, `MySQL`, `PostgreSql`, `SQL` and `Unknown`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [targetPlatform] The platform type of the migration target. Possible values are `AzureDbForMySql`, `AzureDbForPostgreSql`, `MongoDb`, `SQLDB`, `SQLMI` and `Unknown`. Changing this forces a new resource to be created.
  ProjectArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.serviceName,
    required this.sourcePlatform,
    this.tags,
    required this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sourcePlatform': sourcePlatform,
      'tags': ?tags,
      'targetPlatform': targetPlatform,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sourcePlatform: (map['sourcePlatform'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetPlatform: (map['targetPlatform'] as String).input(),
    );
  }
}

