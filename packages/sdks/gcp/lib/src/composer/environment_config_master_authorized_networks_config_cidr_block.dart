// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock {
  /// cidr_block must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// display_name is a field for users to identify CIDR blocks.
  final pulumi.Input<String?>? displayName;

  /// Creates a new [EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is a field for users to identify CIDR blocks.
  const EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock({
    required this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
