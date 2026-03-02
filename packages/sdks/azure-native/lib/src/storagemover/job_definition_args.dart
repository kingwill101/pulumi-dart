// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_job_definition_args_doc}
/// The set of arguments for JobDefinition.
/// {@endtemplate}
/// {@macro pulumi_storagemover_job_definition_args_doc}
class JobDefinitionArgs {
  /// Name of the Agent to assign for new Job Runs of this Job Definition.
  final pulumi.Input<String>? agentName;
  /// Strategy to use for copy.
  final pulumi.Input<String> copyMode;
  /// A description for the Job Definition. OnPremToCloud is for migrating data from on-premises to cloud. CloudToCloud is for migrating data between cloud to cloud.
  final pulumi.Input<String>? description;
  /// The name of the Job Definition resource.
  final pulumi.Input<String>? jobDefinitionName;
  /// The name of the Project resource.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the source Endpoint.
  final pulumi.Input<String> sourceName;
  /// The subpath to use when reading from the source Endpoint.
  final pulumi.Input<String>? sourceSubpath;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;
  /// The name of the target Endpoint.
  final pulumi.Input<String> targetName;
  /// The subpath to use when writing to the target Endpoint.
  final pulumi.Input<String>? targetSubpath;

  /// Creates a new [JobDefinitionArgs].
  /// [agentName] Name of the Agent to assign for new Job Runs of this Job Definition.
  /// [copyMode] Strategy to use for copy.
  /// [description] A description for the Job Definition. OnPremToCloud is for migrating data from on-premises to cloud. CloudToCloud is for migrating data between cloud to cloud.
  /// [jobDefinitionName] The name of the Job Definition resource.
  /// [projectName] The name of the Project resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceName] The name of the source Endpoint.
  /// [sourceSubpath] The subpath to use when reading from the source Endpoint.
  /// [storageMoverName] The name of the Storage Mover resource.
  /// [targetName] The name of the target Endpoint.
  /// [targetSubpath] The subpath to use when writing to the target Endpoint.
  JobDefinitionArgs({
    this.agentName,
    required this.copyMode,
    this.description,
    this.jobDefinitionName,
    required this.projectName,
    required this.resourceGroupName,
    required this.sourceName,
    this.sourceSubpath,
    required this.storageMoverName,
    required this.targetName,
    this.targetSubpath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'copyMode': copyMode,
      'description': ?description,
      'jobDefinitionName': ?jobDefinitionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'sourceName': sourceName,
      'sourceSubpath': ?sourceSubpath,
      'storageMoverName': storageMoverName,
      'targetName': targetName,
      'targetSubpath': ?targetSubpath,
    };
  }

  factory JobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return JobDefinitionArgs(
      agentName: map['agentName'] == null ? null : (map['agentName']! as String).input(),
      copyMode: (map['copyMode'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      jobDefinitionName: map['jobDefinitionName'] == null ? null : (map['jobDefinitionName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceName: (map['sourceName'] as String).input(),
      sourceSubpath: map['sourceSubpath'] == null ? null : (map['sourceSubpath']! as String).input(),
      storageMoverName: (map['storageMoverName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
      targetSubpath: map['targetSubpath'] == null ? null : (map['targetSubpath']! as String).input(),
    );
  }
}

