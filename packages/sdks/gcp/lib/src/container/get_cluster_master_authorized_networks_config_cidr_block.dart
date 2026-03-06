// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// Field for users to identify CIDR blocks.
  final pulumi.Input<String> displayName;

  /// Creates a new [GetClusterMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation.
  /// [displayName] Field for users to identify CIDR blocks.
  const GetClusterMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory GetClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

