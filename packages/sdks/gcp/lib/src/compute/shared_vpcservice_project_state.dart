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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostProject: (() { final guardedValue = map['hostProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProject: (() { final guardedValue = map['serviceProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

