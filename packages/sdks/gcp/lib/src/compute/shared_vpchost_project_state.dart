// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedVPCHostProject resources.
class SharedVPCHostProjectState {
  /// The ID of the project that will serve as a Shared VPC host project
  final pulumi.Input<String>? project;

  /// Creates a new [SharedVPCHostProjectState].
  /// [project] The ID of the project that will serve as a Shared VPC host project
  SharedVPCHostProjectState({
    pulumi.Output<String>? project,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory SharedVPCHostProjectState.fromMap(Map<String, dynamic> map) {
    return SharedVPCHostProjectState(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

