// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_instance_attachment_instance_attachment_args_doc}
/// The set of arguments for InstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_instance_attachment_instance_attachment_args_doc}
class InstanceAttachmentArgs {
  /// The resource ID of the environment.
  final pulumi.Input<String> environment;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  final pulumi.Input<String> instanceId;

  /// Creates a new [InstanceAttachmentArgs].
  /// [environment] The resource ID of the environment.
  /// [instanceId] The Apigee instance associated with the Apigee environment,
  InstanceAttachmentArgs({
    required pulumi.Output<String> environment,
    required pulumi.Output<String> instanceId,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'instanceId': instanceId,
    };
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      environment: pulumi.Output.create<String>(map['environment'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

