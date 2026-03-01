// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_instance_attachment_args_doc}
/// The set of arguments for InstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_instance_attachment_args_doc}
class InstanceAttachmentArgs {
  /// ID of the attached environment.
  final pulumi.Input<String>? environment;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [InstanceAttachmentArgs].
  /// [environment] ID of the attached environment.
  /// [instanceId] Required.
  /// [organizationId] Required.
  InstanceAttachmentArgs({
    pulumi.Output<String>? environment,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> organizationId,
  }) :
      environment = pulumi.Input.asOptionalInput<String>(environment),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'instanceId': instanceId,
      'organizationId': organizationId,
    };
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

