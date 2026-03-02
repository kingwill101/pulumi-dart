// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS.
  /// Must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// Field for users to identify CIDR blocks.
  final pulumi.Input<String>? displayName;

  /// Creates a new [ClusterMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] External network that can access Kubernetes master through HTTPS.
  /// [displayName] Field for users to identify CIDR blocks.
  ClusterMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory ClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return ClusterMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: (map['cidrBlock'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
    );
  }
}

