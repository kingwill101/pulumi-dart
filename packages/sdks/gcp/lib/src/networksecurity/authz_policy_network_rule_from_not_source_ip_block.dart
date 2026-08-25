// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleFromNotSourceIpBlock {
  /// The length of the address range.
  final pulumi.Input<int> length;
  /// The address prefix.
  final pulumi.Input<String> prefix;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSourceIpBlock].
  /// [length] The length of the address range.
  /// [prefix] The address prefix.
  const AuthzPolicyNetworkRuleFromNotSourceIpBlock({
    required this.length,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': length,
      'prefix': prefix,
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSourceIpBlock.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSourceIpBlock(
      length: pulumi.Input.fromValue((map['length'] as num).toInt()),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
