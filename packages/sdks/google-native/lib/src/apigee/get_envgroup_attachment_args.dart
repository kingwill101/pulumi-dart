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
    required this.attachmentId,
    required this.envgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'envgroupId': envgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentArgs(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      envgroupId: pulumi.Input.fromValue(map['envgroupId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

