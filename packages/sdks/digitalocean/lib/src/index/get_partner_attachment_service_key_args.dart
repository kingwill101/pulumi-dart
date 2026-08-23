// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_partner_attachment_service_key_get_partner_attachment_service_key_args_doc}
/// Arguments for getPartnerAttachmentServiceKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_partner_attachment_service_key_get_partner_attachment_service_key_args_doc}
class GetPartnerAttachmentServiceKeyArgs {
  final pulumi.Input<String> attachmentId;

  /// Creates a new [GetPartnerAttachmentServiceKeyArgs].
  /// [attachmentId] Required.
  const GetPartnerAttachmentServiceKeyArgs({
    required this.attachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
    };
  }

  factory GetPartnerAttachmentServiceKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentServiceKeyArgs(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
    );
  }
}
