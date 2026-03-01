// ignore_for_file: unused_element, unnecessary_cast


class ServerIpv4FirewallRule {
  /// Specifies the name of the firewall rule.
  final String name;
  /// End of the firewall rule range as IPv4 address.
  final String rangeEnd;
  /// Start of the firewall rule range as IPv4 address.
  final String rangeStart;

  /// Creates a new [ServerIpv4FirewallRule].
  /// [name] Specifies the name of the firewall rule.
  /// [rangeEnd] End of the firewall rule range as IPv4 address.
  /// [rangeStart] Start of the firewall rule range as IPv4 address.
  ServerIpv4FirewallRule({
    required this.name,
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rangeEnd': rangeEnd,
      'rangeStart': rangeStart,
    };
  }

  factory ServerIpv4FirewallRule.fromMap(Map<String, dynamic> map) {
    return ServerIpv4FirewallRule(
      name: map['name'] as String,
      rangeEnd: map['rangeEnd'] as String,
      rangeStart: map['rangeStart'] as String,
    );
  }
}

