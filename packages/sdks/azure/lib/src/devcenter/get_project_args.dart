// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_get_project_args_doc}
class GetProjectArgs {
  /// The name of this Dev Center Project.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Dev Center Project exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectArgs].
  /// [name] The name of this Dev Center Project.
  /// [resourceGroupName] The name of the Resource Group where the Dev Center Project exists.
  GetProjectArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

