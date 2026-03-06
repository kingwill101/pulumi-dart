// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CIDR block with an optional name.
class CidrBlockResponseComposerV1beta1 {
  /// CIDR block that must be specified in CIDR notation.
  final pulumi.Input<String> cidrBlock;
  /// User-defined name that identifies the CIDR block.
  final pulumi.Input<String> displayName;

  /// Creates a new [CidrBlockResponseComposerV1beta1].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  const CidrBlockResponseComposerV1beta1({
    required this.cidrBlock,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'displayName': displayName,
    };
  }

  factory CidrBlockResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockResponseComposerV1beta1(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}

