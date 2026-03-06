// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CidrBlock contains an optional name and one CIDR block.
class CidrBlockResponse {
  /// cidr_block must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// display_name is an optional field for users to identify CIDR blocks.
  final pulumi.Input<String> displayName;

  /// Creates a new [CidrBlockResponse].
  /// [cidrBlock] cidr_block must be specified in CIDR notation.
  /// [displayName] display_name is an optional field for users to identify CIDR blocks.
  const CidrBlockResponse({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory CidrBlockResponse.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponse(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

