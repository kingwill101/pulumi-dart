// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyHttpRuleFromNotSourceIpBlock {
  /// The length of the address range.
  final pulumi.Input<int> length;
  /// The address prefix.
  final pulumi.Input<String> prefix;

  /// Creates a new [AuthzPolicyHttpRuleFromNotSourceIpBlock].
  /// [length] The length of the address range.
  /// [prefix] The address prefix.
  const AuthzPolicyHttpRuleFromNotSourceIpBlock({
    required this.length,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': length,
      'prefix': prefix,
    };
  }

  factory AuthzPolicyHttpRuleFromNotSourceIpBlock.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourceIpBlock(
      length: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['length'])),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
