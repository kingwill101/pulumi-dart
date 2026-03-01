// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_storagemover_project_args_doc}
class ProjectArgs {
  /// A description for the Project.
  final pulumi.Input<String>? description;
  /// The name of the Project resource.
  final pulumi.Input<String>? projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [ProjectArgs].
  /// [description] A description for the Project.
  /// [projectName] The name of the Project resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  ProjectArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? projectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageMoverName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'projectName': ?projectName,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Output.create<String>(map['storageMoverName'] as String),
    );
  }
}

