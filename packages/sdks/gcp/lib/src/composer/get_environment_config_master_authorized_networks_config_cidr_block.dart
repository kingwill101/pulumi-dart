// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock {
  /// cidr_block must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// display_name is a field for users to identify CIDR blocks.
  final pulumi.Input<String> displayName;

  /// Creates a new [GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is a field for users to identify CIDR blocks.
  GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

