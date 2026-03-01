// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// The description of the Elastic Job.
  final pulumi.Input<String>? description;
  /// The ID of the Elastic Job Agent. Changing this forces a new Elastic Job to be created.
  final pulumi.Input<String>? jobAgentId;
  /// The name which should be used for this Elastic Job. Changing this forces a new Elastic Job to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [JobState].
  /// [description] The description of the Elastic Job.
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Elastic Job to be created.
  /// [name] The name which should be used for this Elastic Job. Changing this forces a new Elastic Job to be created.
  JobState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? jobAgentId,
    pulumi.Output<String>? name,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      jobAgentId = pulumi.Input.asOptionalInput<String>(jobAgentId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobAgentId': ?jobAgentId,
      'name': ?name,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      jobAgentId: map['jobAgentId'] == null ? null : pulumi.Output.create<String>(map['jobAgentId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

