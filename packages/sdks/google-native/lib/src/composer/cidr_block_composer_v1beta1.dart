// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CIDR block with an optional name.
class CidrBlockComposerV1beta1 {
  /// CIDR block that must be specified in CIDR notation.
  final pulumi.Input<String>? cidrBlock;

  /// User-defined name that identifies the CIDR block.
  final pulumi.Input<String>? displayName;

  /// Creates a new [CidrBlockComposerV1beta1].
  /// [cidrBlock] CIDR block that must be specified in CIDR notation.
  /// [displayName] User-defined name that identifies the CIDR block.
  CidrBlockComposerV1beta1({this.cidrBlock, this.displayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'displayName': ?displayName,
    };
  }

  factory CidrBlockComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return CidrBlockComposerV1beta1(
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
