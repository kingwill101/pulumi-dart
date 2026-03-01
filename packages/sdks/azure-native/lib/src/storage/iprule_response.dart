// ignore_for_file: unused_element, unnecessary_cast


/// IP rule with specific IP or IP range in CIDR format.
class IPRuleResponse {
  /// The action of IP ACL rule.
  final String? action;
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final String iPAddressOrRange;

  /// Creates a new [IPRuleResponse].
  /// [action] The action of IP ACL rule.
  /// [iPAddressOrRange] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRuleResponse({
    this.action,
    required this.iPAddressOrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'iPAddressOrRange': iPAddressOrRange,
    };
  }

  factory IPRuleResponse.fromMap(Map<String, dynamic> map) {
    return IPRuleResponse(
      action: map['action'] == null ? null : map['action'] as String,
      iPAddressOrRange: map['iPAddressOrRange'] as String,
    );
  }
}

