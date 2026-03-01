// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAttachment resources.
class InstanceAttachmentState {
  /// The resource ID of the environment.
  final pulumi.Input<String>? environment;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String>? instanceId;
  /// The name of the newly created  attachment (output parameter).
  final pulumi.Input<String>? name;

  /// Creates a new [InstanceAttachmentState].
  /// [environment] The resource ID of the environment.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  /// [name] The name of the newly created  attachment (output parameter).
  InstanceAttachmentState({
    pulumi.Output<String>? environment,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
  }) :
      environment = pulumi.Input.asOptionalInput<String>(environment),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'instanceId': ?instanceId,
      'name': ?name,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

