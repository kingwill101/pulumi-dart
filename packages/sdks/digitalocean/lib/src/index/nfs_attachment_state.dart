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
    this.region,
    this.shareId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'shareId': ?shareId,
      'vpcId': ?vpcId,
    };
  }

  factory NfsAttachmentState.fromMap(Map<String, dynamic> map) {
    return NfsAttachmentState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shareId: map['shareId'] == null ? null : (map['shareId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

