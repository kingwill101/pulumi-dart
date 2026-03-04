// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasemigration_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_databasemigration_get_project_get_project_args_doc}
class GetProjectArgs {
  /// Name of the database migration project.
  final pulumi.Input<String> name;

  /// Name of the resource group where resource belongs to.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the database migration service where resource belongs to.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetProjectArgs].
  /// [name] Name of the database migration project.
  /// [resourceGroupName] Name of the resource group where resource belongs to.
  /// [serviceName] Name of the database migration service where resource belongs to.
  GetProjectArgs({
    required this.name,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
