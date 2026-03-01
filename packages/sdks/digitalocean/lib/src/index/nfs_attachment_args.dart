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
    required pulumi.Output<String> region,
    required pulumi.Output<String> shareId,
    required pulumi.Output<String> vpcId,
  }) :
      region = pulumi.Input.asInput<String>(region),
      shareId = pulumi.Input.asInput<String>(shareId),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'shareId': shareId,
      'vpcId': vpcId,
    };
  }

  factory NfsAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NfsAttachmentArgs(
      region: pulumi.Output.create<String>(map['region'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

