// ignore_for_file: unused_element, unnecessary_cast


/// IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
class IPBlock {
  /// cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  final String cidr;
  /// except is a slice of CIDRs that should not be included within an IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are outside the cidr range
  final List<String>? except;

  /// Creates a new [IPBlock].
  /// [cidr] cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  /// [except] except is a slice of CIDRs that should not be included within an IPBlock Valid examples are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are outside the cidr range
  IPBlock({
    required this.cidr,
    this.except,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'except': ?except,
    };
  }

  factory IPBlock.fromMap(Map<String, dynamic> map) {
    return IPBlock(
      cidr: map['cidr'] as String,
      except: map['except'] == null ? null : (map['except'] as List).cast<String>(),
    );
  }
}

