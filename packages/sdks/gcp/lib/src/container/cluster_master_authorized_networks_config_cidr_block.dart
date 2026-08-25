// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMasterAuthorizedNetworksConfigCidrBlock {
  /// External network that can access Kubernetes master through HTTPS.
  /// Must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// Field for users to identify CIDR blocks.
  final pulumi.Input<String?>? displayName;

  /// Creates a new [ClusterMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] External network that can access Kubernetes master through HTTPS.
  /// [displayName] Field for users to identify CIDR blocks.
  const ClusterMasterAuthorizedNetworksConfigCidrBlock({
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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
