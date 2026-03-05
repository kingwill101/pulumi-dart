// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyHttpRuleFromSourceIpBlock {
  /// The length of the address range.
  final pulumi.Input<int> length;
  /// The address prefix.
  final pulumi.Input<String> prefix;

  /// Creates a new [AuthzPolicyHttpRuleFromSourceIpBlock].
  /// [length] The length of the address range.
  /// [prefix] The address prefix.
  AuthzPolicyHttpRuleFromSourceIpBlock({
    required this.length,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': length,
      'prefix': prefix,
    };
  }

  factory AuthzPolicyHttpRuleFromSourceIpBlock.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourceIpBlock(
      length: pulumi.Input.fromValue(map['length'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}

