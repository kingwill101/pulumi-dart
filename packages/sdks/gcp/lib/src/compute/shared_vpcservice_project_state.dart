// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedVPCServiceProject resources.
class SharedVPCServiceProjectState {
  /// The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of a host project to associate.
  final pulumi.Input<String>? hostProject;
  /// The ID of the project that will serve as a Shared VPC service project.
  final pulumi.Input<String>? serviceProject;

  /// Creates a new [SharedVPCServiceProjectState].
  /// [deletionPolicy] The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  /// [hostProject] The ID of a host project to associate.
  /// [serviceProject] The ID of the project that will serve as a Shared VPC service project.
  SharedVPCServiceProjectState({
    this.deletionPolicy,
    this.hostProject,
    this.serviceProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'hostProject': ?hostProject,
      'serviceProject': ?serviceProject,
    };
  }

  factory SharedVPCServiceProjectState.fromMap(Map<String, dynamic> map) {
    return SharedVPCServiceProjectState(
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      hostProject: map['hostProject'] == null ? null : (map['hostProject']! as String).input(),
      serviceProject: map['serviceProject'] == null ? null : (map['serviceProject']! as String).input(),
    );
  }
}

