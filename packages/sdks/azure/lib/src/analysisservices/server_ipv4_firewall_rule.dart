// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerIpv4FirewallRule {
  /// Specifies the name of the firewall rule.
  final pulumi.Input<String> name;
  /// End of the firewall rule range as IPv4 address.
  final pulumi.Input<String> rangeEnd;
  /// Start of the firewall rule range as IPv4 address.
  final pulumi.Input<String> rangeStart;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      rangeEnd: pulumi.Input.fromValue(map['rangeEnd'] as String),
      rangeStart: pulumi.Input.fromValue(map['rangeStart'] as String),
    );
  }
}

