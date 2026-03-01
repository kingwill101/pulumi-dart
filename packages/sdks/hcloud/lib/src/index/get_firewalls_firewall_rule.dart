// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallsFirewallRule {
  final String? description;
  final List<String>? destinationIps;
  final String direction;
  final String? port;
  final String? protocol;
  final List<String>? sourceIps;

  /// Creates a new [GetFirewallsFirewallRule].
  /// [description] Optional.
  /// [destinationIps] Optional.
  /// [direction] Required.
  /// [port] Optional.
  /// [protocol] Optional.
  /// [sourceIps] Optional.
  GetFirewallsFirewallRule({
    this.description,
    this.destinationIps,
    required this.direction,
    this.port,
    this.protocol,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationIps': ?destinationIps,
      'direction': direction,
      'port': ?port,
      'protocol': ?protocol,
      'sourceIps': ?sourceIps,
    };
  }

  factory GetFirewallsFirewallRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationIps: map['destinationIps'] == null ? null : (map['destinationIps'] as List).cast<String>(),
      direction: map['direction'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceIps: map['sourceIps'] == null ? null : (map['sourceIps'] as List).cast<String>(),
    );
  }
}

