// ignore_for_file: unused_element, unnecessary_cast


/// DEPRECATED 1.9 - This group version of IPBlock is deprecated by networking/v1/IPBlock. IPBlock describes a particular CIDR (Ex. "192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
class IPBlock {
  /// CIDR is a string representing the IP Block Valid examples are "192.168.1.1/24"
  final String cidr;
  /// Except is a slice of CIDRs that should not be included within an IP Block Valid examples are "192.168.1.1/24" Except values will be rejected if they are outside the CIDR range
  final List<String>? except;

  /// Creates a new [IPBlock].
  /// [cidr] CIDR is a string representing the IP Block Valid examples are "192.168.1.1/24"
  /// [except] Except is a slice of CIDRs that should not be included within an IP Block Valid examples are "192.168.1.1/24" Except values will be rejected if they are outside the CIDR range
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

