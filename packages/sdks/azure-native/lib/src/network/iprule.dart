// ignore_for_file: unused_element, unnecessary_cast


class IPRule {
  /// Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  final String? addressPrefix;

  /// Creates a new [IPRule].
  /// [addressPrefix] Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed.
  IPRule({
    this.addressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
    };
  }

  factory IPRule.fromMap(Map<String, dynamic> map) {
    return IPRule(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
    );
  }
}

