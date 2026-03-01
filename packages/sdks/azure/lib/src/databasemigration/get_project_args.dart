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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

