// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NfsAttachment resources.
class NfsAttachmentState {
  final pulumi.Input<String>? region;
  /// The ID of the NFS share to attach.
  final pulumi.Input<String>? shareId;
  /// The ID of the vpc to attach the NFS share to.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NfsAttachmentState].
  /// [region] Optional.
  /// [shareId] The ID of the NFS share to attach.
  /// [vpcId] The ID of the vpc to attach the NFS share to.
  NfsAttachmentState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareId,
    pulumi.Output<String>? vpcId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'shareId': ?shareId,
      'vpcId': ?vpcId,
    };
  }

  factory NfsAttachmentState.fromMap(Map<String, dynamic> map) {
    return NfsAttachmentState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

