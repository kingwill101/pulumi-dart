// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvGroupAttachment resources.
class EnvGroupAttachmentState {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  final pulumi.Input<String>? envgroupId;
  /// The resource ID of the environment.
  final pulumi.Input<String>? environment;
  /// The name of the newly created  attachment (output parameter).
  final pulumi.Input<String>? name;

  /// Creates a new [EnvGroupAttachmentState].
  /// [envgroupId] The Apigee environment group associated with the Apigee environment,
  /// [environment] The resource ID of the environment.
  /// [name] The name of the newly created  attachment (output parameter).
  EnvGroupAttachmentState({
    this.envgroupId,
    this.environment,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': ?envgroupId,
      'environment': ?environment,
      'name': ?name,
    };
  }

  factory EnvGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return EnvGroupAttachmentState(
      envgroupId: map['envgroupId'] == null ? null : (map['envgroupId']! as String).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

