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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> sourcePlatform,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetPlatform,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sourcePlatform = pulumi.Input.asInput<String>(sourcePlatform),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetPlatform = pulumi.Input.asInput<String>(targetPlatform);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      sourcePlatform: pulumi.Output.create<String>(map['sourcePlatform'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetPlatform: pulumi.Output.create<String>(map['targetPlatform'] as String),
    );
  }
}

