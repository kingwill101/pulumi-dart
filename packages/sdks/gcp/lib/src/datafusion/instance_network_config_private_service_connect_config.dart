// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkConfigPrivateServiceConnectConfig {
  /// (Output)
  /// Output only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC.
  /// The size of this block is /25. The format of this field is governed by RFC 4632.
  final pulumi.Input<String>? effectiveUnreachableCidrBlock;
  /// Optional. The reference to the network attachment used to establish private connectivity.
  /// It will be of the form projects/{project-id}/regions/{region}/networkAttachments/{network-attachment-id}.
  /// This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  final pulumi.Input<String>? networkAttachment;
  /// Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC.
  /// The size of this block should be at least /25. This range should not overlap with the primary address range of any subnetwork used by the network attachment.
  /// This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses.
  /// If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632.
  final pulumi.Input<String>? unreachableCidrBlock;

  /// Creates a new [InstanceNetworkConfigPrivateServiceConnectConfig].
  /// [effectiveUnreachableCidrBlock] (Output)
  /// [networkAttachment] Optional. The reference to the network attachment used to establish private connectivity.
  /// [unreachableCidrBlock] Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC.
  InstanceNetworkConfigPrivateServiceConnectConfig({
    this.effectiveUnreachableCidrBlock,
    this.networkAttachment,
    this.unreachableCidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveUnreachableCidrBlock': ?effectiveUnreachableCidrBlock,
      'networkAttachment': ?networkAttachment,
      'unreachableCidrBlock': ?unreachableCidrBlock,
    };
  }

  factory InstanceNetworkConfigPrivateServiceConnectConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkConfigPrivateServiceConnectConfig(
      effectiveUnreachableCidrBlock: map['effectiveUnreachableCidrBlock'] == null ? null : (map['effectiveUnreachableCidrBlock'] as String).input(),
      networkAttachment: map['networkAttachment'] == null ? null : (map['networkAttachment'] as String).input(),
      unreachableCidrBlock: map['unreachableCidrBlock'] == null ? null : (map['unreachableCidrBlock'] as String).input(),
    );
  }
}

