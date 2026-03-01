// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_get_job_definition_args_doc}
/// Arguments for getJobDefinition.
/// {@endtemplate}
/// {@macro pulumi_storagemover_get_job_definition_args_doc}
class GetJobDefinitionArgs {
  /// The name of the Job Definition resource.
  final pulumi.Input<String> jobDefinitionName;
  /// The name of the Project resource.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [GetJobDefinitionArgs].
  /// [jobDefinitionName] The name of the Job Definition resource.
  /// [projectName] The name of the Project resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  GetJobDefinitionArgs({
    required pulumi.Output<String> jobDefinitionName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageMoverName,
  }) :
      jobDefinitionName = pulumi.Input.asInput<String>(jobDefinitionName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobDefinitionName': jobDefinitionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory GetJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionArgs(
      jobDefinitionName: pulumi.Output.create<String>(map['jobDefinitionName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Output.create<String>(map['storageMoverName'] as String),
    );
  }
}

