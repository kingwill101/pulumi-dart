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
    this.description,
    this.jobAgentId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobAgentId': ?jobAgentId,
      'name': ?name,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      jobAgentId: map['jobAgentId'] == null ? null : (map['jobAgentId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

