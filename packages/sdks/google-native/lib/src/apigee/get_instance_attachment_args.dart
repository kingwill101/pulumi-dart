// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_instance_attachment_args_doc}
/// Arguments for getInstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_instance_attachment_args_doc}
class GetInstanceAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetInstanceAttachmentArgs].
  /// [attachmentId] Required.
  /// [instanceId] Required.
  /// [organizationId] Required.
  const GetInstanceAttachmentArgs({
    required this.attachmentId,
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'instanceId': instanceId,
      'organizationId': organizationId,
    };
  }

  factory GetInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentArgs(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

