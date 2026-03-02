// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CIDR block with an optional name.
class CidrBlockResponse {
  /// CIDR block that must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// User-defined name that identifies the CIDR block.
  final pulumi.Input<String> displayName;

  /// Creates a new [CidrBlockResponse].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlockResponse({
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
      cidrBlock: (map['cidrBlock'] as String).input(),
      displayName: (map['displayName'] as String).input(),
    );
  }
}

