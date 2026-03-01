// ignore_for_file: unused_element, unnecessary_cast


class AuthzPolicyHttpRuleFromNotSourceIpBlock {
  /// The length of the address range.
  final int length;
  /// The address prefix.
  final String prefix;

  /// Creates a new [AuthzPolicyHttpRuleFromNotSourceIpBlock].
  /// [length] The length of the address range.
  /// [prefix] The address prefix.
  AuthzPolicyHttpRuleFromNotSourceIpBlock({
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
      length: map['length'] as int,
      prefix: map['prefix'] as String,
    );
  }
}

