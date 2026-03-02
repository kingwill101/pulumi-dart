// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CIDR block with an optional name.
class CidrBlock {
  /// CIDR block that must be specified in CIDR notation.
  final pulumi.Input<String>? cidrBlock;
  /// User-defined name that identifies the CIDR block.
  final pulumi.Input<String>? displayName;

  /// Creates a new [CidrBlock].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlock({
    this.cidrBlock,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory CidrBlock.fromMap(Map<String, dynamic> map) {
    return CidrBlock(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
    );
  }
}

