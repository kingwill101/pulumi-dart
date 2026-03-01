// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_envgroup_attachment_args_doc}
/// Arguments for getEnvgroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_envgroup_attachment_args_doc}
class GetEnvgroupAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> envgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvgroupAttachmentArgs].
  /// [attachmentId] Required.
  /// [envgroupId] Required.
  /// [organizationId] Required.
  GetEnvgroupAttachmentArgs({
    required pulumi.Output<String> attachmentId,
    required pulumi.Output<String> envgroupId,
    required pulumi.Output<String> organizationId,
  }) :
      attachmentId = pulumi.Input.asInput<String>(attachmentId),
      envgroupId = pulumi.Input.asInput<String>(envgroupId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'envgroupId': envgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentArgs(
      attachmentId: pulumi.Output.create<String>(map['attachmentId'] as String),
      envgroupId: pulumi.Output.create<String>(map['envgroupId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

