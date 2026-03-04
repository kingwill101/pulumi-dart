// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for using Private Service Connect to establish connectivity between the Data Fusion consumer project and the corresponding tenant project.
class PrivateServiceConnectConfigResponse {
  /// The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block is /25. The format of this field is governed by RFC 4632. Example: 240.0.0.0/25
  final pulumi.Input<String> effectiveUnreachableCidrBlock;

  /// The reference to the network attachment used to establish private connectivity. It will be of the form projects/{project-id}/regions/{region}/networkAttachments/{network-attachment-id}.
  final pulumi.Input<String> networkAttachment;

  /// Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block should be at least /25. This range should not overlap with the primary address range of any subnetwork used by the network attachment. This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses. If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632. Example: 192.168.0.0/25
  final pulumi.Input<String> unreachableCidrBlock;

  /// Creates a new [PrivateServiceConnectConfigResponse].
  /// [effectiveUnreachableCidrBlock] The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block is /25. The format of this field is governed by RFC 4632. Example: 240.0.0.0/25
  /// [networkAttachment] The reference to the network attachment used to establish private connectivity. It will be of the form projects/{project-id}/regions/{region}/networkAttachments/{network-attachment-id}.
  /// [unreachableCidrBlock] Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block should be at least /25. This range should not overlap with the primary address range of any subnetwork used by the network attachment. This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses. If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632. Example: 192.168.0.0/25
  PrivateServiceConnectConfigResponse({
    required this.effectiveUnreachableCidrBlock,
    required this.networkAttachment,
    required this.unreachableCidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveUnreachableCidrBlock': effectiveUnreachableCidrBlock,
      'networkAttachment': networkAttachment,
      'unreachableCidrBlock': unreachableCidrBlock,
    };
  }

  factory PrivateServiceConnectConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateServiceConnectConfigResponse(
      effectiveUnreachableCidrBlock: pulumi.Input.fromValue(
        map['effectiveUnreachableCidrBlock'] as String,
      ),
      networkAttachment: pulumi.Input.fromValue(
        map['networkAttachment'] as String,
      ),
      unreachableCidrBlock: pulumi.Input.fromValue(
        map['unreachableCidrBlock'] as String,
      ),
    );
  }
}
