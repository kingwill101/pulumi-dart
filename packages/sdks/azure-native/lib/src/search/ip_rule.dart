// ignore_for_file: unused_element, unnecessary_cast


/// The IP restriction rule of the Azure AI Search service.
class IpRule {
  /// Value corresponding to a single IPv4 address (eg., 123.1.2.3) or an IP range in CIDR format (eg., 123.1.2.3/24) to be allowed.
  final String? value;

  /// Creates a new [IpRule].
  /// [value] Value corresponding to a single IPv4 address (eg., 123.1.2.3) or an IP range in CIDR format (eg., 123.1.2.3/24) to be allowed.
  IpRule({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory IpRule.fromMap(Map<String, dynamic> map) {
    return IpRule(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

