// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_shared_vpcservice_project_shared_vpcservice_project_args_doc}
/// The set of arguments for SharedVPCServiceProject.
/// {@endtemplate}
/// {@macro pulumi_compute_shared_vpcservice_project_shared_vpcservice_project_args_doc}
class SharedVPCServiceProjectArgs {
  /// The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of a host project to associate.
  final pulumi.Input<String> hostProject;
  /// The ID of the project that will serve as a Shared VPC service project.
  final pulumi.Input<String> serviceProject;

  /// Creates a new [SharedVPCServiceProjectArgs].
  /// [deletionPolicy] The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  /// [hostProject] The ID of a host project to associate.
  /// [serviceProject] The ID of the project that will serve as a Shared VPC service project.
  SharedVPCServiceProjectArgs({
    pulumi.Output<String>? deletionPolicy,
    required pulumi.Output<String> hostProject,
    required pulumi.Output<String> serviceProject,
  }) :
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      hostProject = pulumi.Input.asInput<String>(hostProject),
      serviceProject = pulumi.Input.asInput<String>(serviceProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'hostProject': hostProject,
      'serviceProject': serviceProject,
    };
  }

  factory SharedVPCServiceProjectArgs.fromMap(Map<String, dynamic> map) {
    return SharedVPCServiceProjectArgs(
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      hostProject: pulumi.Output.create<String>(map['hostProject'] as String),
      serviceProject: pulumi.Output.create<String>(map['serviceProject'] as String),
    );
  }
}

