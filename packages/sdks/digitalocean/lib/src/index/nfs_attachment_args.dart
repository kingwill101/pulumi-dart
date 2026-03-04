// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_nfs_attachment_nfs_attachment_args_doc}
/// The set of arguments for NfsAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_nfs_attachment_nfs_attachment_args_doc}
class NfsAttachmentArgs {
  final pulumi.Input<String> region;

  /// The ID of the NFS share to attach.
  final pulumi.Input<String> shareId;

  /// The ID of the vpc to attach the NFS share to.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NfsAttachmentArgs].
  /// [region] Required.
  /// [shareId] The ID of the NFS share to attach.
  /// [vpcId] The ID of the vpc to attach the NFS share to.
  NfsAttachmentArgs({
    required this.region,
    required this.shareId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'shareId': shareId,
      'vpcId': vpcId,
    };
  }

  factory NfsAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NfsAttachmentArgs(
      region: pulumi.Input.fromValue(map['region'] as String),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
